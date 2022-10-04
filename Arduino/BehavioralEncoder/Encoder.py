# -*- coding: utf-8 -*-
"""
Created on Tue Jul 27 10:41:07 2021

@author: khan332, Om
"""

import sys
import serial
import csv
import time
import os
import numpy as np
from datetime import datetime
import tkinter
from tkinter import filedialog

# File explorer 
root = tkinter.Tk()
root.withdraw() # use to hide tkinter window 


def search_for_folderpath():
    currDir = os.getcwd()
    tempDir = filedialog.askdirectory(parent=root, initialdir=currDir, title="Please select a directory")
    if len(tempDir) > 0:
        print("you chose: %s" % tempDir)
    return tempDir

count = 0
data = []
timestamp = datetime.now().strftime("%Y_%m_%d_%I.%M.%p")

# Open csv file for writing read data
file_path_variable = search_for_folderpath()
filename = file_path_variable + '/BehaviourTraining_' + str(datetime.now().strftime("%m%d%h%H%M%S%f"))
extension = '.csv'

with open(filename+extension, "w",newline="") as f:
  with serial.Serial(port=sys.argv[1], baudrate=sys.argv[2],timeout=1) as ser:
      ser.flush()
      while True:
        if ser.in_waiting > 0:
            decoded_bytes= ser.readline().decode('utf-8').rstrip()
            #data.append(decoded_bytes)
            try:
                writer = csv.writer(f)
                writer.writerow([decoded_bytes])
                print(decoded_bytes)
                count = count+1
                f.flush()
            except:
                f.flush()
                f.close()
                continue
        if KeyboardInterrupt == True:
            f.flush()
            f.close()
            ser.close()

