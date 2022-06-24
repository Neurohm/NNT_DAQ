import os
import sys 
import time 
import csv

# add parent directory to PYTHONPATH 
file_dir = os.path.dirname(os.path.realpath(__file__))
parent_dir = os.path.dirname(file_dir)
sys.path.append(parent_dir)

import numpy as np
import matplotlib as plt

import ok 

BLOCK_LENGTH = 32
BUFFER_LENGTH = 32
N_CHANNEL = 16

dev_info = ok.okTDeviceInfo()

def initialize_FPGA(dev: ok.okCFrontPanel, bit_file_path):

    dev.GetDeviceInfo(dev_info)
    print("Found device: {}".format(dev_info.productName))

    dev.LoadDefaultPLLConfiguration()

    print('Device firmware version: {}.{}'.format(dev_info.deviceMajorVersion, dev_info.deviceMinorVersion))
    print('Device serial number: {}'.format(dev_info.serialNumber))
    print('Device ID: {}'.format(dev_info.productID))

    # Download the configuration file:
    if (dev.ConfigureFPGA(bit_file_path) != ok.okCFrontPanel.NoError):
        print("Fpga configuration failed.")
        return False

    # Check for FrontPanel support in the FPGA configuration
    if dev.IsFrontPanelEnabled():
        print('Front Panel support enabled.')
    else:
        print('Front Panel support not enabled.')

    if dev_info.deviceInterface == ok.OK_INTERFACE_USB3:
        print('Using USB3.0 interface.')
    else:
        print('Using USB2.0 interface')

    if dev_info.usbSpeed == ok.OK_USBSPEED_FULL:
        print('USB speed : FULL')
    elif dev_info.usbSpeed == ok.OK_USBSPEED_HIGH:
        print('USB speed : HIGH')
    elif dev_info.usbSpeed == ok.OK_USBSPEED_SUPER:
        print('USB speed: SUPER')
    else:
        print('USB speed type unrecognized')

    return True

def receive_data(dev: ok.okCFrontPanel, block_length, buffer_length, BTPipeAdd):

    buff = bytearray(buffer_length)
    bytes_count_or_error = dev.ReadFromBlockPipeOut(BTPipeAdd, block_length, buff)
    if bytes_count_or_error <= 0:
        print("Error while reading from pipe")
        print(bytes_count_or_error)
        return 
    else:
        return buff

def write_to_csv(writer, buff):
    # Divide the data into 16 channel samples according to sample numbers (time)
    # If BLOCK_LENGTH = 32 bytes, the data contains 1 (time) x 16 (channels) x 16bit data
    data_row = [None]*16
    for i in range(0,1):       #time
        for j in range(0,8):   # channels
            sample_byte =  buff[(i*2*16 + j*4):(i*2*16 + j*4 + 4)]
            sample_byte.reverse()
            data_row[2*j] = int.from_bytes(sample_byte[0:2], "big", signed = "False")
            data_row[2*j+1] = int.from_bytes(sample_byte[2:4], "big", signed = "False")
        writer.writerow(data_row)
            

def print_help():
    print("pyStream.py syntax:\n python3 pyStream.py path_to_bitfile path_to_csv_file")

def main():
    print("---------ADC Stream 16 Channel Application for Python APL---------")
    print("Front Panel API version: {}".format(ok.okCFrontPanel_GetAPIVersionString()))

    dev = ok.okCFrontPanel()
    error_code = dev.OpenBySerial("")

    if error_code != 0:
        print('Could not open the device')
        print(error_code)
        sys.exit(1)
    
    if not initialize_FPGA(dev, sys.argv[1]):
        print("FPGA count not be initialized.")
        sys.exit(1)
    
    # Opening the csv file for write mode
    f = open(sys.argv[2], 'w')

    writer = csv.writer(f)
    
    # Set values for reset1 = 1, reset=1, write_en=0 and read_en=0
    dev.SetWireInValue(0x00,0x0000000C)                 
    # Set value for sampling enable
    dev.SetWireInValue(0x01,0x00000001)
    # Set value for channel selection 
    dev.SetWireInValue(0x02,0x0000ffff)
    # Set value for sampling frequency 
    # Threshold = (clk frequency/sampling frequency)-1
    # For clk frequency = 2 MHz, sampling frequency = 20 kHz, threshold value = 100
    dev.SetWireInValue(0x03,0x00000064)
    # Set value for sawtooth generator's threshold value 
    dev.SetWireInValue(0x04,0x000000ff)
    # Set value for sawtooth generator's increment value
    dev.SetWireInValue(0x05,0x00000000)
    dev.UpdateWireIns()

    # Set values for reset1=1, reset=0, write_en=1 and read_en=1
    dev.SetWireInValue(0x00,0x0000000B)
    dev.UpdateWireIns()

    # While loop till the calibration is done
    while True:
        dev.UpdateWireOuts()
        if (dev.GetWireOutValue(0x20) & 0x00000001)  == 1:
            break
    print("Intial Calibration Done")

    # While loop till the clock generation PLL is locked
    while True:
        dev.UpdateWireOuts()
        if (dev.GetWireOutValue(0x20) & 0x00000002)  == 2:
            break
    print("Clock generation module PLL locked.")

    print("Reseting the blocks whose input clock is DCLOCK")
    time.sleep(0.02) # sleep for 20us so that DCLOCK has more than 2 cycles complete
    # Set values for reset1=0, reset=0, write_en=1 and read_en=1
    dev.SetWireInValue(0x00,0x00000003)
    dev.UpdateWireIns()
    
    print("Starting reading from BlockThrotle Pipe...")
    buff = bytearray(512)
    # Read from BTPipeOut
    for i in range(1,100000):
        buff = receive_data(dev, BLOCK_LENGTH, BUFFER_LENGTH, 0xa0)
        write_to_csv(writer,buff)


    print("Closing csv file...")
    f.close()
        

if __name__ == "__main__":
    main()





