#!/bin/bash

. ./alexa-user.sh
. ./alexa-device-echo.sh

CMD='{"type":"PlayCommand"}'
URL='https://'$AWSHOST'/api/np/command?deviceSerialNumber='$DEVICENUMBER'&deviceType='$DEVICETYPE
curl $URL \
-H "$COOKIE" \
-H "$CSRF" \
--data "${CMD}" \
--compressed
