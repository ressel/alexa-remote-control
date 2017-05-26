#!/bin/bash

. ./alexa-version.sh

COOKIERAW=`echo $COOKIE | sed 's/Cookie: //g'`
CSRFRAW=`echo $CSRF | sed 's/csrf: //g'`

. ./alexa-device-echo.sh

DEVICENUMBERECHO=$DEVICENUMBER
DEVICETYPEECHO=$DEVICETYPE

. ./alexa-device-echo-dot.sh

DEVICENUMBERDOT=$DEVICENUMBER
DEVICETYPEDOT=$DEVICETYPE

TARGETDIR=/r/cloudstation/Pass

sed "s#%COOKIEVALUE%#$COOKIERAW#g" template/setEchoCookie.tsk.xml \
   | sed "s#%CSRFVALUE%#$CSRFRAW#g" \
   | sed "s#%DEVICENUMBERECHOVALUE%#$DEVICENUMBERECHO#g" \
   | sed "s#%DEVICETYPEECHOVALUE%#$DEVICETYPEECHO#g" \
   | sed "s#%DEVICENUMBERDOTVALUE%#$DEVICENUMBERDOT#g" \
   | sed "s#%DEVICETYPEDOTVALUE%#$DEVICETYPEDOT#g" >$TARGETDIR/setEchoCookie.tsk.xml



