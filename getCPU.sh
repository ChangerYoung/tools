function readFile(){
total_cores=0
while read LINE
do
	ip=`echo $LINE | awk '{print $2}'`
	var=`ssh -n root@$ip "cat /proc/cpuinfo| grep 'physical id'| sort| uniq| wc -l && cat /proc/cpuinfo| grep 'cpu cores'| uniq"`
	#echo $var
	#var=2 cpu cores : 6
	cpu=`echo $var | awk '{print $1}'`
	core=`echo $var | awk '{print $5}'`
	cores=`expr $cpu \* $core`
	total_cores=`expr $total_cores + $cores`
done < $1
	echo $total_cores
}
	readFile $1
