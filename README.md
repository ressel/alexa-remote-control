# alexa-remote-control
control Amazon Alexa from command Line (set volume, select station from tunein or pandora) 

Please find more details here: https://www.gehrig.info/alexa/Alexa.html

Every once in a while Amazon updates its software.  Then certain values (especially cookie) will have to be adapted as follows:

On Desktop:
1. Open Alexa / Music / TuneIn in Chrome browser and select desired channel.
2. Search for first queue-and-play POST request in F12 Developer Mode.
3. Copy as cURL (bash)
4. Manually update CSRF and COOKIE in alexa-version.sh.
   CSRF='csrf: 1234567890'
   COOKIE='Cookie: x-amzn-dat-gui-client-v=1.24.2017.0; ...'
5. Run updateSetEchoCookie.sh to create updated setEchoCookie.sh.
6. Copy that file to cloudstation/Pass.
On Smartphone:
7. In DS Cloud copy Pass/setEchoCookie.tsk.xml to Internal/Tasker/tasks (overwriting whatever is in there already).
8. In Tasker press Tasks tab long and import setEchoCookie.tsk.xml
9. In Tasker execute task setEchoCookie.tsk.

More commands - not yet in a script... but easy for DIY:

Shuffle on/off:

CMD='{"type":"ShuffleCommand","shuffle":true}'

CMD='{"type":"ShuffleCommand","shuffle":false}'

Repeat on/off:

CMD='{"type":"RepeatCommand","repeat":true}'

CMD='{"type":"RepeatCommand","repeat":false}'

+30Sek / -30Sek (e.g. for Books)

CMD='{"type":"ForwardCommand"}'

CMD='{"type":"RewindCommand"}'

Adapted for me.
