#!/bin/bash

: <<'END'
Comment Section
----------------------

> is for redirect

/dev/null is a black hole where any data sent, will be discarded

2 is the file descriptor for Standard Error

1 is the file descriptor for Standard Out

Therefore >/dev/null 2>&1 is redirect the output of your program to /dev/null. Include both the Standard Error and Standard Out.

http://sc.tamu.edu/help/general/unix/redirection.html

END


touch /root/test 2>&1 /dev/null

if [ $? -eq 0 ]
then
  echo "Successfully created file"
else
  echo "Could not create file" >&2
fi
