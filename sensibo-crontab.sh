#!/bin/bash 
# Takes a boolean entry
# true = climate-react enabled
# false = climate-react disabled
# DEVICE = sensibo device ID - https://home.sensibo.com/#/pods

LOG="/var/log/sensibo.log"
DATE=$(date "+%A %x %X")
APIKEY={API KEY HERE}
STATE=$1
DEVICE=$2
if $STATE
then
  FUNC="climate react enabled"
else
  FUNC="climate react disabled"
fi

case $DEVICE in
{1st device ID here)
ROOM="Master bedroom"
;;
{2nd device ID here})
ROOM="2nd bedroom"
;;
*)
ROOM="Room device not passed"
;;
esac

STATE=$1
CMD=$(curl -X PUT -H "Content-Type: application/json" -d '{"enabled":'${STATE}'}' https://home.sensibo.com/api/v2/pods/$DEVICE/smartmode/?apiKey=$APIKEY | jq '.status') 

echo $DATE $ROOM $FUNC - status - $CMD >> $LOG
