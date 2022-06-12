import os
import sys 
import time 

# add parent directory to PYTHONPATH 
file_dir = os.path.dirname(os.path.realpath(__file__))
parent_dir = os.path.dirname(file_dir)
sys.path.append(parent_dir)

import numpy as np
import matplotlib as plt

from FrontPanelAPI import ok 

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

def print_help():
    print("pyStream.py syntax:\n python3 pyStream.py path_to_bitfile sampling_freq")


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
    
    # Set values for reset=1, write_en=0 and read_en=0
    dev.SetWireInValue(0x00,0x00000004)                 
    # Set value for sampling enable
    dev.SetWireInValue(0x01,0x00000000)
    # Set value for channel selection 
    dev.SetWireInValue(0x02,0x0000ffff)
    # Set value for sampling frequency 
    # Threshold = (clk frequency/sampling frequency)-1
    # For clk frequency = 2 MHz, sampling frequency = 20 kHz, threshold value = 100
    dev.SetWireInValue(0x03,0x00000064)
    # Set value for sawtooth generator's threshold value 
    dev.SetWireInValue(0x04,0x0000000f)
    # Set value for sawtooth generator's increment value
    dev.SetWireInValue(0x05,0x00000001)
    dev.UpdateWireIns()

    




