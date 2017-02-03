#!/bin/bash
#DEVICENUMBER='G090LF0965040AP4'
#DEVICETYPE='A3S5BH2HU6VAYF'
DEVICENUMBER='90F00718639307F8'
DEVICETYPE='AB72C64C86AW2'
CUSTOMERID='A1FALCWOVHE8B5'
#COOKIE='Cookie: x-amzn-dat-gui-client-v=1.24.1314.0; session-id=254-9221301-7971657; session-id-time=2116358929l; ubid-acbde=255-3208565-1937124; session-token="a0ZYKtogXg1x//O9hp5UhHP3h69jL0ZjCc5FosLLzhaiEwA8rWt74Y6zYKz1OjUJXeJSETANYxDZYcYsG53za8FTlJ4SnUiLZJnflD6P0+7bg3CokUWEjljnxlJN5+T2yYTRYn9YKk7vtGKGM2Ze4r6stjVfY5i+PUnCc39dX6LkKuIJNhpbAkVf782LEu86tD7j9Ccl0M8+Bc14wJBlEyob+m92nfx6bKjvH3mjunk="; x-acbde=QAXLtVwhvTHHf6X9NtjHhlLqPRdZHkbr; at-acbde=Atza|IwEBIJrDPtSWNTsycEwFWNTOszuidsYhzqHBYd9x0jgT0BcubjoqLnLqowKcc36PEe0XPIPOZSwLeURDgTxZrVye--Co0-4FW6isWtw3s5Jga74qu5mCI5DCz37qnjQNrkiWbfmgv9AgvPHaFTpF2KufWmU5UDcJQfW7BVRzfMKsBQCxGv2ceB4cS7Z2rlYri2IqIbbNBS3cBSSFkQy2ymLvsm9k7MX0hzyrUB1Ts373KOQvk2qojo8KcAbHu5bEtjv3BWh7PFMknHecjA7gCfdzviIc_6YSsmC1TQS9TbgDKg3xJDwO1GAVnyH8m7lUmu3F98s9DAme9v5hOhnBmdswBqfdCdW4OXEN8yFJSAv68W01MPxByfvdYrqP7TFoTkqRWZ-l2Xzrb5TBKUvavlJfJz_0; sess-at-acbde="Gy6Nqr8tVbMFsTTX8q2O7cf8ezHUzkjfMD9OlLx6P8k="; csrf=-2131660023'
COOKIE='Cookie: x-amzn-dat-gui-client-v=1.24.1314.0; session-id=254-9221301-7971657; session-id-time=2116358929l; csrf=-2131660023; ubid-acbde=255-3208565-1937124; session-token="3Nfrwv93aY1r1nVAAnfcO9fyPHJdKsDbhJZ6BBJA/TsiTt8tobVW12CHS5NFeO0Ja7P7MnmL9fv0hDVJd7k5tW3Hl8XPRlHDZjoZswc94MfdAO9n4JCagh4gRXCWFzt2GVgdAusaKlFvZFH8HyYdaGEvrWsTakNvHI4ju4NRX4nSHvbnh+yh2IxtaB4OPKm78BcAl7TIVCncjupdxpS95xDX6g1g2ln2mzWVRtdB+UY="; x-acbde="jSbM5ZEathIi@MLkbK7wl01KRRG3DKL4"; at-acbde=Atza|IwEBIAPRpH4aRmSsqtOF-5TKMLu_14waOmdmkNKyDPGhBYEuGj4YFrnUUD-sBIu_cZJuEQEv_uf3TfEMJ_Gouc6VmSuZUOQG_-5p1dA53ntrX_7Ab7NNCL2qvLxUujvShjr5kP36r2S612rva-HR5gxQ8VVSQKa1Ay4d9fWiyvukdD7pv5DcOLNcOaKVjqXURZJ-T3-yeky02iuEE-HaWFUre3vxLRqTrk4rwnciVNa1k19VfRjy9S9dY559O2JO8VkSnL0LLEx9-ZfoViofCnCtAqaZZG3vw8m8vA_Jfof27y8UClUJNT85CIOk2hoD3p1RoqcfnRiln0hHZV8MeW7jiEJda632B-kvho0mYE-um1Z9fHglsJCp1SQQWIDmX-Fog6yeLnknUNgI8n-FG4iwIGLg; sess-at-acbde="11jcpmdOPlHTINcXTAzcOUZffAiMvfNNygdtHxKtcOA="'
CSRF='csrf: -2131660023' 

STATION=$1

#Check if parameter is set
if [ -z "$STATION" ];
then
	echo "Station Empty - ./alexa-tunein.sh s16430 "
	exit
fi
#echo "${STATION}"

URL='https://layla.amazon.de/api/tunein/queue-and-play?deviceSerialNumber='$DEVICENUMBER'&deviceType='$DEVICETYPE'&guideId='$STATION'&contentType=station&callSign=&mediaOwnerCustomerId='$CUSTOMERID
curl $URL \
-X POST  \
-H "$CSRF" \
-H "$COOKIE" \
--compressed

