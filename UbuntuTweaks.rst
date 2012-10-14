=============
Ubuntu Tweaks
=============

------------
Ubuntu 12.04
------------

Unity
-----

Tweak Unity the way you prefer. For example disable global menus remove sticky edges etc.

http://www.webupd8.org/2012/04/things-to-tweak-after-installing-ubuntu.html

Wifi Troubles
-------------

1.Intel Wifi Link 5100 does not connect after system suspend (Ubuntu 12.04)?

SUSPEND_MODULES="iwlwifi" 

Record desktop + sound
------------------------
avconv -f x11grab -s 1024x768 -r 24 -i 0:0 -deadline realtime -b 5000000 -minrate 200000 -maxrate 40000000 -f alsa -i pulse recording-filename-000.webm


Latex to openoffice
-------------------
http://linuxsagas.wordpress.com/2008/12/08/latex-to-openoffice/
