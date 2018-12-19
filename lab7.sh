#!/bin/bash

a()
{
if [[ ! -r $1 ]];then
	>&2 echo 'no read permission!'
	exit -1
fi

if [[ -f $2 ]];then
	if [[ ! -w $2 ]];then
		echo 'no write perrmission to' $2
	fi
	> $2
else
	touch $2
	chmod +rw $2
fi

if [[ -f $3 ]];then
	if [[ ! -w $3 ]];then
		echo 'no write perrmission to' $3
	fi
	> $3
else
	touch $3
	chmod +rw $3
fi

cnt=0
while read line;do
	if [[ $cnt%2 -eq 0 ]];then
		echo $cnt $line >> $2
	else
		echo $cnt $line >> $3
	fi
	((cnt++))
done < $1
}

b()
{
	if [[ ! -d $1 ]];then
		echo 'no directory!' >&2
		exit -1
	fi

	if [[ ! -w $1 ]];then
		echo 'no write permission to dir!' >&2
		exit -2
	fi

	while read line;do
		obj=`echo $line | cut -d: -f1`
		pth=`echo $line | cut -d: -f2`
	
		if [[ $obj = 'D' ]];then
			echo 1 $obj
			mkdir -p $1/$pth			
		elif [[ $obj = 'F' ]];then
			echo 2 $obj
			install -D /dev/null $1/$pth
		else
			echo 3 $obj
			continue
		fi
		
	done < $2


}
b $@






