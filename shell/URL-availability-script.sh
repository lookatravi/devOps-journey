#!bin/bash
urlfile='url.txt'
x=0
exec 3<"$urlfile"
while read url <&3
do
	attempt=5
	timeout=5
	online=false
	echo "Checking status of $url."
	for ((i=1; i<=$attempts; i++))
	do	
		code='curl -sL --connect-timeout 20 --max-time 30 -w "%{http_code}\\n"$url"-o /dev/null'
		
		echo "Found code $code for $url."
		
		if ["$code" = "200]; then
			echo "Website $url is online."
			online=true
			break
		else
			echo "Website $url seems to be offline. Waiting$timeout seconds."
			sleep $timeout
		fi
	done
	
	if $online;then
		echo "Monitor finished, website is online."
		echo "Website $url is offline: ${date}" >> /test/logs/url.logs/url
		# exit 1
	fi
	
	x=$(($x+1))
  done   
   
		