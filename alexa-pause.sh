#!/bin/bash

. ./alexa-user.sh
. ./alexa-device-echo.sh

CMD='{"type":"PauseCommand"}'
URL='https://'$AWSHOST'/api/np/command?deviceSerialNumber='$DEVICENUMBER'&deviceType='$DEVICETYPE
echo curl $URL -H "$COOKIE" -H "$CSRF" --data "${CMD}"
curl $URL \
-H "$COOKIE" \
-H "$CSRF" \
--data "${CMD}"
