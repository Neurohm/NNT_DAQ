import nidaqmx
import nidaqmx.stream_writers 
from nidaqmx.constants import AcquisitionType
import numpy as np 
import matplotlib.pyplot as plt
import time


## Constants for generating RAMP signal for FSCV 
Fs = 50e3 # Sampling rate 

VRef = 1.5
Vmax = 1
Vmin = -0.5
rampSlope = 300
repetetionTime = 100e-3

rampTime = 2*(Vmax-Vmin)/rampSlope 
N = repetetionTime * Fs
N1 = (rampTime/2) * Fs
N2 = rampTime * Fs 

fscvRamp = np.concatenate((np.linspace(Vmin+VRef,Vmax+VRef,num=int(N1)),np.linspace(Vmax+VRef,Vmin+VRef,num=int(N2-N1)),(Vmin+VRef)*np.ones((1,int(N-N2)))), axis=None)
fscvRamp1s = np.tile(fscvRamp,int(1/repetetionTime))

rampgenTask = nidaqmx.Task()
rampgenTask.ao_channels.add_ao_voltage_chan('Dev1/ao0',name_to_assign_to_channel="fscvrampchan")
rampgenTask.timing.cfg_samp_clk_timing(rate=Fs, sample_mode=AcquisitionType.CONTINUOUS)

rampWriter = nidaqmx.stream_writers.AnalogSingleChannelWriter(rampgenTask.out_stream, auto_start=True)

print("Signal Generation started!")
rampWriter.write_many_sample(fscvRamp1s)

try: 
    print("Press Ctrl+C to stop")
    while True:
        time.sleep(0.1)
except KeyboardInterrupt:
    pass

rampgenTask.stop()
rampgenTask.close()
print("Signal Generation stopped!")
