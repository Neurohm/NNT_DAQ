import os
import sys 
import csv
import numpy as np
import matplotlib as plt
import random 


def write_to_csv(writer, buff):
    data_row = [None]*16
    for i in range(0,16):
        for j in range(0,16):
            sample_byte =  buff[(i*2*16 + j*2):(i*2*16 + j*2 + 2)]
            data_row[j] = int.from_bytes(sample_byte, "big", signed = "False")
        writer.writerow(data_row)
    


def randbytes(n):
    for _ in range(n):
        yield random.getrandbits(8)

def main():
    print("Generating 512 bytes byte array")
    buff1 = bytearray(randbytes(512))
    buff2 = bytearray(randbytes(512))
    

    # Opening the csv file for write mode 
    f = open(sys.argv[1],'w',newline='')
    writer = csv.writer(f)
    write_to_csv(writer,buff1)
    write_to_csv(writer,buff2)

    f.close()

if __name__ == "__main__":
    main()