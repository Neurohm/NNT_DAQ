import matplotlib.pyplot as plt
import numpy as np
import nidaqmx
from nidaqmx.stream_readers import AnalogMultiChannelReader
from nidaqmx import constants
import threading
from datetime import datetime
import os
import pprint

pp = pprint.PrettyPrinter(indent=4)

# Read parameters
sampling_freq_in = 50000  # in Hz
buffer_in_size = int(sampling_freq_in/10)  # 0.1 s worth of data
bufsize_callback = int(buffer_in_size)
buffer_in_size_cfg = int(buffer_in_size)  
chans_in = 1  # number of chan

# Write paramteters


# Plotting parameters
refresh_rate_plot = 100  # in Hz
crop = 0  # number of seconds to drop at acquisition start before saving

# Initialize data placeholders
buffer_in = np.zeros((chans_in, int(buffer_in_size)))
data = np.zeros((chans_in, int(buffer_in_size)))  # will contain a first column with zeros but that's fine


# Definitions of basic functions
def ask_user():
    global running
    input("Press ENTER/RETURN to stop acquisition and coil drivers.")
    running = False


def cfg_read_task(acquisition):
    acquisition.ai_channels.add_ai_voltage_chan("Dev1/ai0")
    acquisition.timing.cfg_samp_clk_timing(rate=sampling_freq_in,
                                           sample_mode=constants.AcquisitionType.CONTINUOUS,
                                           samps_per_chan=buffer_in_size_cfg)


def reading_task_callback(task_idx, event_type, num_samples, callback_data):
    global data
    global buffer_in
    if running:
        #buffer_in = np.zeros((chans_in, num_samples))  # double definition ???
        stream_in.read_many_sample(buffer_in, num_samples,
                                   timeout=constants.WAIT_INFINITELY)
        data = buffer_in
        pp.pprint(data)
    return 0


# Configure and setup the tasks
task_in = nidaqmx.Task()
cfg_read_task(task_in)
stream_in = AnalogMultiChannelReader(task_in.in_stream)
task_in.register_every_n_samples_acquired_into_buffer_event(bufsize_callback,
                                                            reading_task_callback)

# Start threading to prompt user to stop
thread_user = threading.Thread(target=ask_user)
thread_user.start()

# Main loop
running = True
time_start = datetime.now()
task_in.start()

# Plot a visual feedback for the user's mental health

f, (ax1) = plt.subplots(1, 1, sharex='all', sharey='none')
while running:  # make this adapt to number of channels automatically
    a = 0
    ax1.clear()
    ax1.plot(data[0, -sampling_freq_in * 5:].T,'r')  # 5 seconds rolling window
    ax1.set_xlabel('time [s]')
    ax1.set_ylabel('m/s**2')
    xticks = np.arange(0, data[0, -sampling_freq_in * 5:].size, sampling_freq_in)
    xticklabels = np.arange(0, xticks.size, 1)
    ax1.set_xticks(xticks)
    ax1.set_xticklabels(xticklabels)
    plt.pause(1/refresh_rate_plot)  # required for dynamic plot to work (if too low, nulling performance bad)

#Close task to clear connection once done
task_in.close()
duration = datetime.now() - time_start
print(duration, ': Acquisition Time')
