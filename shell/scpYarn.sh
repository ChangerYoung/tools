while read LINE
do
	scp /home/yarn/hadoop-2.6.0-SNAPSHOT/etc/hadoop/*-site.xml yarn@$LINE:/home/yarn/hadoop-2.6.0-SNAPSHOT/etc/hadoop
done < $1
