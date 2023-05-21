#!/bin/bash
# Takes a boolean entry
# true = Turn AC on
# false = Turn AC off
# DEVICE = sensibo device ID - https://home.sensibo.com/#/pods

LOG="/var/log/sensibo.log"
DATE=$(date "+%A %x %X")
APIKEY=(API KEY HERE)
STATE=$1
DEVICE=$2
if $STATE
then
  FUNC="AC turned on"
else
  FUNC="AC turned off"
fi

case $DEVICE in
1st Device ID here)
ROOM="Master bedroom"
;;
2nd Device ID here)
ROOM="2nd bedroom"
;;
3rd Device ID here)
ROOM="3rd bedroom"
;;
*)
ROOM="Room device not passed"
;;
esac

STATE=$1
CMD=$(curl --location --request POST 'https://home.sensibo.com/api/v2/pods/'$DEVICE'/acStates?apiKey='$APIKEY'' \
--header 'Content-Type: application/json' \
--data-raw '{
  "acState": {
    "on": '$STATE'
  }
}'| jq '.status')

echo $DATE $ROOM $FUNC - status - $CMD >> $LOG
