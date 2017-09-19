##!/usr/bin/python

# This script looks for the most recent directory found in the C:\temp directory and copies all .txt files
# to the C:\temp2 directory

import os, datetime, shutil, sys, time, urllib.request 
import profile as profile

path = "c:\\temp\\"
dest_path = "c:\\temp2\\" # This code defines the destination path of downloaded file
dirs = filter(os.path.isdir, os.listdir ( path )) # Saves a list of the directories in the defined directory in a variable

file_list = [] # Creating a list to hold a list of files
for i in dirs: # Creating a for loop to go through each file in the path
    a = os.stat(os.path.join(path,i)) #os.stat returns file attributes about an inode. os.path.join joins one or more path components
    file_list.append([time.ctime(a.st_ctime)]) #time of most recent metadata change on Unix, or the time of creation on Windows)

newpath = (os.path.join(path,i)) # Defining the new path

for root, dirs, files in os.walk(newpath):
    for y in files: # Creating a for loop to go through each file in the path
        if y.endswith('.txt'): # Checking to see if file ends with .fmw
##            print(os.path.join(newpath+ '\\' + y)) # For testing only
            shutil.copy(newpath+ '\\' + y, dest_path) # Copies the files (noted as x) in the path to the destination 


