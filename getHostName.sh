while read LINE
do
 	ip=`echo $LINE | awk '{print $4}'`
	var=`ssh -n root@$ip "hostname -A"`
	ip_10=`echo $LINE | awk '{print $2}'`
	echo "ocr	$ip	$var	$ip_10"
done < $1
