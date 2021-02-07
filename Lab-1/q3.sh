#!/bin/sh


# the output file
FILE=`pwd`/downloaded_data.out

# the url to retrieve
URL=http://www.example.com/foo/bar

# write header information to the log file
echo "" >> $FILE
# retrieve the web page using curl. time the process with the time command.
for i in 1 2 3 4 5 6 7 8 9 10
do
	time(curl --connect-timeout 100 ($URL))>>$FILE;
done
# write additional footer information to the log file
echo "" >> $FILE
