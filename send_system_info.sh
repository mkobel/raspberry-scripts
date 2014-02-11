#!/bin/bash

tm=`/opt/vc/bin/vcgencmd measure_temp`
tc=`echo $tm| cut -d '=' -f2 | sed 's/..$//'`

vm=`/opt/vc/bin/vcgencmd measure_volts core`
vv=`echo $vm| cut -d '=' -f2 | sed 's/..$//'`

curl -s -o /dev/null  "http://webgate-moosseedorf.kobelnet.ch/garden/system?name=$1&temp="$tc"&voltage="$vv

