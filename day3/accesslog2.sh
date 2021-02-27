touch abc.log.1 def.log.1 jkl.log.1 mno.log.1
 
for file in $(ls *.log.1)
do
     filename=`echo $file | awk -f. '{print $1}'`
     now=date+"dd/mm/yy"
 
        newfile=$filename+$now
 
        mv $file $newfile
 
        echo $newfile
done
