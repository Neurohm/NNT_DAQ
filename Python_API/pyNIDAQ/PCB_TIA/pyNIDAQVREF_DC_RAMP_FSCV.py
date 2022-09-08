from distutils import extension
import matplotlib.pyplot as plt
import numpy as np
import nidaqmx
import nidaqmx.stream_readers
import nidaqmx.stream_writers 
from nidaqmx import constants
import tkinter
from tkinter import filedialog
import threading
from datetime import datetime
import os
import pprint
import csv

pp = pprint.PrettyPrinter(indent=4)

# File explorer 
root = tkinter.Tk()
root.withdraw() # use to hide tkinter window 

# Read parameters
sampling_freq_in = 50000  # in Hz
buffer_in_size = int(sampling_freq_in/1)  # 1 s worth of data
bufsize_callback = int(buffer_in_size)
buffer_in_size_cfg = int(buffer_in_size)  
chans_in = 3  # number of chan

# Write paramteters
sampling_freq_out = 50000 # in Hz

# Parameters for generation of ramp waveform for FSCV 
VRef = 1.5
Vmax = 1
Vmin = -0.5
rampSlope = 300
repetetionTime = 100e-3
rampTime = (Vmax-Vmin)/rampSlope 
N = repetetionTime * sampling_freq_out
N1 = rampTime * sampling_freq_out
fscvRamp = np.concatenate((np.linspace(Vmin+VRef,Vmax+VRef,num=int(N1)),np.linspace(Vmax+VRef,Vmin+VRef,num=int(N1))[1:],(Vmin+VRef)*np.ones((1,int(N-2*N1+1)))), axis=None)
fscvRamp1s = np.tile(fscvRamp,int(1/repetetionTime))

# Generating digital output waveform 
fscvActiveDig = np.ndarray((int(N),))
fscvActiveDig = 5*np.concatenate((np.ones((1,int(2*N1-1))),np.zeros((1,int(N-2*N1+1)))), axis=None)
fscvActiveDig1s = np.tile(fscvActiveDig,int(1/repetetionTime))

multiAO1s = np.vstack((fscvRamp1s,fscvActiveDig1s))


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
    a=acquisition.ai_channels.add_ai_voltage_chan('Dev1/ai0:2')
    acquisition.timing.cfg_samp_clk_timing(rate=sampling_freq_in,
                                           sample_mode=constants.AcquisitionType.CONTINUOUS,
                                           samps_per_chan=buffer_in_size_cfg)
    a.ai_rng_high=10.0
    a.ai_rng_low=-10.0

def cfg_write_task(stimulation):
    stimulation.ao_channels.add_ao_voltage_chan('Dev1/ao0:1')
    stimulation.timing.cfg_samp_clk_timing(rate=sampling_freq_out, sample_mode=constants.AcquisitionType.CONTINUOUS)



def reading_task_callback(task_idx, event_type, num_samples, callback_data):
    global data
    global buffer_in
    global writer
    if running:
        stream_in.read_many_sample(buffer_in, num_samples,
                                   timeout=constants.WAIT_INFINITELY)
        data = buffer_in
        writer.writerows(data.transpose())
    return 0

def search_for_folderpath():
    currDir = os.getcwd()
    tempDir = filedialog.askdirectory(parent=root, initialdir=currDir, title="Please select a directory")
    if len(tempDir) > 0:
        print("you chose: %s" % tempDir)
    return tempDir



# Open csv file for writing read data
file_path_variable = search_for_folderpath()
filename = file_path_variable + '/fscvVrefDC_RAMP_FSCV_' + str(datetime.now().strftime("%m%d%h%H%M%S%f"))
extension = '.csv'
file = open(filename + extension, 'w', newline='')
writer = csv.writer(file)

# Configure and setup the tasks
task_in = nidaqmx.Task()
task_out = nidaqmx.Task()
cfg_read_task(task_in)
cfg_write_task(task_out)
stream_out = nidaqmx.stream_writers.AnalogMultiChannelWriter(task_out.out_stream, auto_start=False)


stream_in = nidaqmx.stream_readers.AnalogMultiChannelReader(task_in.in_stream)
task_in.register_every_n_samples_acquired_into_buffer_event(bufsize_callback,
                                                            reading_task_callback)

# Start threading to prompt user to stop
thread_user = threading.Thread(target=ask_user)
thread_user.start()

# Main loop
running = True
time_start = datetime.now()
task_in.start()
task_out.start()
stream_out.write_many_sample(multiAO1s)

# Plot a visual feedback for the user's mental health

f, (ax1, ax2, ax3) = plt.subplots(3, 1, sharex='all', sharey='none')
while running:  # make this adapt to number of channels automatically
    a = 0
    ax1.clear()
    ax2.clear()
    ax3.clear()
    ax1.plot(data[0, -sampling_freq_in * 1:].T,'r')  # 1 second rolling window
    ax2.plot(data[1, -sampling_freq_in * 1:].T,'k')
    ax3.plot(data[2, -sampling_freq_in * 1:].T,'b')
    ax3.set_xlabel('time [s]')
    ax1.set_ylabel('m/s**2')
    ax2.set_ylabel('m/s**2')
    ax3.set_ylabel('m/s**2')
    xticks = np.arange(0, data[0, -sampling_freq_in * 5:].size, sampling_freq_in)
    xticklabels = np.arange(0, xticks.size, 1)
    ax3.set_xticks(xticks)
    ax3.set_xticklabels(xticklabels)
    plt.pause(1/refresh_rate_plot)  # required for dynamic plot to work (if too low, nulling performance bad)

#Close task to clear connection once done
task_out.stop()
task_out.close()
task_in.close()
file.close()
duration = datetime.now() - time_start
print(duration, ': Acquisition Time')
