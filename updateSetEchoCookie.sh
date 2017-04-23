#!/bin/bash

. ./alexa-version.sh

COOKIERAW=`echo $COOKIE | sed 's/Cookie: //g'`
CSRFRAW=`echo $CSRF | sed 's/csrf: //g'`

TARGETDIR=/r/cloudstation/Pass

sed "s#%COOKIEVALUE%#$COOKIERAW#g" template/setEchoCookie.tsk.xml | sed "s#%CSRFVALUE%#$CSRFRAW#g" >$TARGETDIR/setEchoCookie.tsk.xml



