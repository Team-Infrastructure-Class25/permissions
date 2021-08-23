#!/bin/bash
# Shell script to find out whether file has read, write and execute 
# permission

echo -n "Enter file name : "
read file
 
# find out if file has write permission or not
[ -w $file ] && W="Write = yes" || W="Write = No"
 
# find out if file has excute permission or not
[ -x $file ] && X="Execute = yes" || X="Execute = No"
 
# find out if file has read permission or not
[ -r $file ] && R="Read = yes" || R="Read = No"
 
echo "$file permissions"
echo "$W"
echo "$R"
echo "$X"

sleep 1s

if [ $R == No ] || [ $W == No ] || [ $X == No ]
then
echo "Assigning full permissions to this $file ----"
echo ""
sleep 2


if [ $read == No ]
then
chmod +r $file
fi

if [ $write == No ]
then
chmod +w $file
fi

if [ $execute == No ]
then
chmod +x $file
fi

echo "Full Permission has been assigned to $file"
else
echo "$file has full permission"
fi

exit 0 