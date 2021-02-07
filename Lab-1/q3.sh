#!/bin/sh

#---------------------------------------------------------
# created by alvin alexander, http://alvinalexander.com
#---------------------------------------------------------
# released under the creative commons share-alike license:
# http://creativecommons.org/licenses/by-sa/2.5/
# link to this web page without the 'nofollow' tag if you
# copy this work.
#---------------------------------------------------------

# the output file
FILE=`pwd`/downloaded_data.out

# the url to retrieve
URL=http://www.example.com/foo/bar

# write header information to the log file
start_date=`date`
echo "START-------------------------------------------------" >> $FILE
echo "" >> $FILE

# retrieve the web page using curl. time the process with the time command.
time (curl --connect-timeout 100 $URL) >> $FILE 2>

# write additional footer information to the log file
echo "" >> $FILE
end_date=`date`
echo "STARTTIME: $start_date" >> $FILE
echo "END TIME:  $end_date" >> $FILE
echo "" >> $FILE
