#! /bin/bash
diff=`diff -iEZ ~/Desktop/TerminalCommands/linux-content/stage1/original/original-file.sh ~/Desktop/TerminalCommands/linux-content/stage1/updated/updated-file.sh`
echo ${#diff}
if [ ${#diff} -gt 0 ]
then
	echo "There is Difference in Files"
	cp ~/Desktop/TerminalCommands/linux-content/stage1/original/original-file.sh ~/Desktop/TerminalCommands/linux-content/stage1/updated/updated-file.sh
	echo "applied changes to UpdatdeFolder"
else
	echo "No difference!! "
fi
if [ -d 'original-backup' ]
then
	cp ~/Desktop/TerminalCommands/linux-content/stage1/original/original-file.sh ~/Desktop/TerminalCommands/linux-content/stage1/original-backup
else
	mkdir original-backup
	cp ~/Desktop/TerminalCommands/linux-content/stage1/original/original-file.sh ~/Desktop/TerminalCommands/linux-content/stage1/original-backup
fi
diff2=`diff -iEZ ~/Desktop/TerminalCommands/linux-content/stage1/original-backup/original-file.sh ~/Desktop/TerminalCommands/linux-content/stage1/updated/updated-file.sh`
if [ ${#diff2} == 0 ]
then
	echo "Changes Applied Successfully.... Backup Created!"
else
	echo "differ in updated - backup"
