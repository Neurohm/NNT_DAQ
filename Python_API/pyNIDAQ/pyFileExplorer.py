import tkinter
from tkinter import filedialog
import os 

root = tkinter.Tk()
root.withdraw() # use to hide tkinter window 

def search_for_folderpath():
    currDir = os.getcwd()
    tempDir = filedialog.askdirectory(parent=root, initialdir=currDir, title="Please select a directory")
    if len(tempDir) > 0:
        print("you chose: %s" % tempDir)
    return tempDir

file_path_variable = search_for_folderpath()
print("\nFolder path variable = ", file_path_variable)