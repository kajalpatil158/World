#! /bin/bash
 
echo  "Successful execution"
echo "hello world"
# Exit status returns 0, because the above command is a success.
echo "Exit status" $?
 
echo  "Incorrect usage"
ls --option
# Incorrect usage, so exit status will be 2.
echo "Exit status" $?
 
echo  "Command Not found"
# Exit status returns 127, because bashscript command not found
echo "Exit status" $?
 
echo -e "Command is not an executable"
ls -l execution.sh
