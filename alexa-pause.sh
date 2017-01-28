#!/bin/bash
DEVICENUMBER='G090LF0965040AP4'
DEVICETYPE='A3S5BH2HU6VAYF'
COOKIE='Cookie: x-amzn-dat-gui-client-v=1.24.1314.0; session-id=254-9221301-7971657; session-id-time=2116358929l; ubid-acbde=255-3208565-1937124; session-token="a0ZYKtogXg1x//O9hp5UhHP3h69jL0ZjCc5FosLLzhaiEwA8rWt74Y6zYKz1OjUJXeJSETANYxDZYcYsG53za8FTlJ4SnUiLZJnflD6P0+7bg3CokUWEjljnxlJN5+T2yYTRYn9YKk7vtGKGM2Ze4r6stjVfY5i+PUnCc39dX6LkKuIJNhpbAkVf782LEu86tD7j9Ccl0M8+Bc14wJBlEyob+m92nfx6bKjvH3mjunk="; x-acbde=QAXLtVwhvTHHf6X9NtjHhlLqPRdZHkbr; at-acbde=Atza|IwEBIJrDPtSWNTsycEwFWNTOszuidsYhzqHBYd9x0jgT0BcubjoqLnLqowKcc36PEe0XPIPOZSwLeURDgTxZrVye--Co0-4FW6isWtw3s5Jga74qu5mCI5DCz37qnjQNrkiWbfmgv9AgvPHaFTpF2KufWmU5UDcJQfW7BVRzfMKsBQCxGv2ceB4cS7Z2rlYri2IqIbbNBS3cBSSFkQy2ymLvsm9k7MX0hzyrUB1Ts373KOQvk2qojo8KcAbHu5bEtjv3BWh7PFMknHecjA7gCfdzviIc_6YSsmC1TQS9TbgDKg3xJDwO1GAVnyH8m7lUmu3F98s9DAme9v5hOhnBmdswBqfdCdW4OXEN8yFJSAv68W01MPxByfvdYrqP7TFoTkqRWZ-l2Xzrb5TBKUvavlJfJz_0; sess-at-acbde="Gy6Nqr8tVbMFsTTX8q2O7cf8ezHUzkjfMD9OlLx6P8k="; csrf=-2131660023'
CSRF='csrf: --2131660023' 

CMD='{"type":"PauseCommand"}'
URL='https://pitangui.amazon.com/api/np/command?deviceSerialNumber='$DEVICENUMBER'&deviceType='$DEVICETYPE
curl $URL \
-H "$COOKIE" \
-H "$CSRF" \
--data "${CMD}" \
--compressed 
