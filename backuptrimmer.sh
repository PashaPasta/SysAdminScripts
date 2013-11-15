#Finds the giveen path then sorts by filename, 
#deletes all but 7 last files, 
#useful if date/time is in file name
#to modify number of files deleted, modify the value following "-mtime +"
#NOTE: -mtime +0 would leave you with everything but the most recent file deleted

#!/bin/bash



find /path/to/trim -type f -mtime +6 -exec rm {} \;   

