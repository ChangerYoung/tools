while read LINE
do
 	ip=`echo $LINE | awk '{print $4}'`
	var=`ssh -n root@$ip "df -h"`
	#ip_10=`echo $LINE | awk '{print $2}'`
	#echo "ocr	$ip	$var	$ip_10"
	echo $ip $var
done < $1
