#!/bin/bash
. ./alexa-user.sh
. ./alexa-device-echo.sh

VOLUME=$1

#check if parameter is set
if [ -z "$VOLUME" ];
then
    echo "use ./alexa-volume.sh 40 # Use something between 0-100"
    exit
fi

VOLUMECMD='{"type":"VolumeLevelCommand","volumeLevel":'$VOLUME'}'
URL='https://'$AWSHOST'/api/np/command?deviceSerialNumber='$DEVICENUMBER'&deviceType='$DEVICETYPE
curl $URL \
-H "$COOKIE" \
-H "$CSRF" \
--data "${VOLUMECMD}" \
--compressed 
