#!/bin/bash
. ./alexa-user.sh
. ./alexa-device-echo.sh

SENDER=$1
#Check if parameter is empty
if [ -z "$SENDER" ];
then
	echo "Station Empty - use ./alexa-pandora.sh 3409818391113140449"
	exit
fi

STATION='{"stationToken":"'$SENDER'","createStation":false}'
echo "${STATION}"

#pandora
URL='https://'$AWSHOST/api/amber/queue-and-play?deviceSerialNumber='$DEVICENUMBER'&deviceType='$DEVICETYPE'&mediaOwnerCustomerId='$CUSTOMERID 
curl $URL \
-H "$COOKIE" \
-H "$CSRF" \
--data "${STATION}" \
--compressed

