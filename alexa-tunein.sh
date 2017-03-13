#!/bin/bash

. ./alexa-user.sh
. ./alexa-device-echo.sh

STATION=$1

#Check if parameter is set
if [ -z "$STATION" ];
then
	echo "Station Empty - ./alexa-tunein.sh s20291" #SWR1
	exit
fi
#echo "${STATION}"

URL='https://'$AWSHOST'/api/tunein/queue-and-play?deviceSerialNumber='$DEVICENUMBER'&deviceType='$DEVICETYPE'&guideId='$STATION'&contentType=station&callSign=&mediaOwnerCustomerId='$CUSTOMERID
echo curl $URL -X POST -H "$CSRF" -H "$COOKIE" --compressed
curl $URL \
-X POST  \
-H "$CSRF" \
-H "$COOKIE" \
--compressed

