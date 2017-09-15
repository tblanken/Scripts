# ----- Working Script ---------------------------
##!/usr/bin/python
import os, datetime, shutil, sys, time, urllib.request 
import profile as profile

from datetime import datetime
from threading import Timer

x=datetime.today()
y=x.replace(day=x.day+15, hour=11, minute=28, second=0, microsecond=0) # Set when to start executing the script

delta_t=y-x
secs=delta_t.seconds+1

def download_files():
    url_path = "http://adict.bcn.rd.hpicorp.net:88/cim/fmw/ipg-atlas_bcd/vulcan/wrl60-haswell_x86_64-dbg"
    fw_folder = "179905"
    fmw_file = "vulcan-trunk-R179905-170914.unsigned.fmw"
    sh_file = "vulcan-trunk-R179905-170914.sh"

#    get_fmw_file = urllib.request.URLopener()
#    get_fmw_file.retrieve(url_path+ '/' + '/'+ fw_folder+ '/' + fmw_file, fmw_file)

    getShFile = urllib.request.URLopener()
    getShFile.retrieve(url_path+ '/' + '/'+ fw_folder+ '/' + sh_file, sh_file)

t = Timer(secs, download_files)
t.start() # Start the script

#print (urlpath+ '\\' + fw_folder+ '\\' + fw_file)
	
#dest_path = "c:\\temp\\" # This code defines the destination path of downloaded file
#dirs = filter(os.path.isdir, os.listdir ( path )) # Saves a list of the directories in the defined directory in a variable

#file_list = [] # Creating a list to hold a list of files
#for i in dirs: # Creating a for loop to go through each file in the path
#    a = os.stat(os.path.join(path,i)) #os.stat returns file attributes about an inode. os.path.join joins one or more path components
#    file_list.append([time.ctime(a.st_ctime)]) #time of most recent metadata change on Unix, or the time of creation on Windows)

#newpath = (os.path.join(path,i)) # Defining the new path

#for root, dirs, files in os.walk(newpath):
#    for y in files: # Creating a for loop to go through each file in the path
#        if y.endswith('.fmw'): # Checking to see if file ends with .txt
##            print(os.path.join(newpath+ '\\' + y)) # For testing only
#            shutil.copy(newpath+ '\\' + y, dest_path) # Copies the files (noted as x) in the path to the destination 

# -----------------------------------------
