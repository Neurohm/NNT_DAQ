import os
import sys 
import csv
import numpy as np
import matplotlib as plt
import random 

def randbytes(n):
    for _ in range(n):
        yield random.getrandbits(8)

def print_help():
    print("The program will generate a byte array and write it to a cs file the user provides.")
    print("csv_byte_writer.py syntax: \n python3 csv_byte_writer.py path_to_csv_file")

def main():
    print("Generating 512 bytes byte array")
    buff = bytearray(randbytes(512))
    print(len(buff))



if __name__ == "__main__":
    main()