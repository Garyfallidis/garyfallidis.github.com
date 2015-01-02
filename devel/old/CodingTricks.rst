Pythonic
---------

#Debugging with nosetests

>>> add 1/0 in your code
>>> nosetests test.py --pdb

This will enable you to debug your code directly

#Add you aliases by default when ipython starts

/home/eg309/.ipython/profile_default/startup
#Add any file ending with .py or .ipy

#and add for example
magic=get_ipython().magic
magic('alias gvim gvim')
magic('alias nosetests nosetests')

#You can investigate which functions you need from 
#history -t in ipython

#Use PEP
The best way to learn PEP8 is to read the PEP :-)
http://www.python.org/dev/peps/pep-0008/
As I understand it PEP8 calls for spaces around operators:
http://www.python.org/dev/peps/pep-0008/#other-recommendations

#Use Numpy/Scipy coding style
https://github.com/numpy/numpy/blob/master/doc/HOWTO_DOCUMENT.rst.txt

Numpy
-----
Advanced tutorial on numpy with strided_as and broadcasting
http://mentat.za.net/numpy/numpy_advanced_slides/
http://stackoverflow.com/questions/2485669/stretch-array-numpy-python

Bash
-----

#Change bash to show older commands starting with your typed characters when pressing PgUp or PgDown. Information here is from http://stackoverflow.com/questions/1030182/how-do-i-change-bash-history-completion-to-complete-whats-already-on-the-line

#To bind PgUp and PgDown search command
#Add the following two lines in .bashrc
bind '"\e[5~": history-search-backward'
bind '"\e[6~": history-search-forward'

#To rebind up and down keys to do the search 
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'


Linking
-------

How to see which libraries are used by an executable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Solaris has pldd. For Linux you can call ldd on the executable or pmap on a running process or look into /proc/PID/maps for mapped libraries.
