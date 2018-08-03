function readFile(){
total_mem=0
while read LINE
do
	ip=`echo $LINE | awk '{print $2}'`
	var=`ssh -n root@$ip "free -g"`
	echo $ip
	#var=total used free shared buffers cached Mem: 98951116 50491976 48459140 0 189980 22098568 -/+ buffers/cache: 28203428 70747688 Swap: 0 0 0
	mem=`echo $var | awk '{print $8}'`
	echo $mem
	total_mem=`expr $total_mem + $mem`
done < $1
	echo $total_mem
}
readFile $1
