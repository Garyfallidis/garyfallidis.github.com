
#Create a new tab
:tab new

#Close a tab
:tab close

#Great tutorial for tabs in gvim
http://vim.wikia.com/wiki/Using_tab_pages

#Navigate between tabs
gt or gT 
Ctrl+PgDn or Ctrl+PgUp

#Move tabs
http://vim.wikia.com/wiki/Using_tab_pages

#Open a file
:e /test/testfile.

#Visual mode
v enter visual mode (character-wise)
V enter visual mode (line-wise)
Ctrl+V enter visual mode (block-wise)
r
y copy 
d delete
D delete from cursor until the end of line
d0 delete from the begining of the line until cursor  
p paste

#Switch between tabs
gt

#Cheat sheet
http://cheat.errtheblog.com/s/vim

#Great tutorial
http://blog.interlinked.org/tutorials/vim_tutorial.html

#Start a tab for a every file
gvim -p file1 file2 file3

#Save session
:mksession ~/mysession.vim

#Load session
:source ~/mysession.vim

#Search and replace in a single file
:%s/foo/bar/g	
:%s/foo/bar/gc  #confirmation
:%s/foo/bar/gci #case insensitive
:%s/foo/bar/gcI #case sensitive

#Search and replace in multiple directories and files
Esc
:args **/*.py
:argsdo %s/search/replace/gc

#Search and replace in selection
Esc
v + arrows
:'<,'>s/foo/bar/gc

#Search in selection
Esc
v+ arrows
:/\%Vfoo

#More on search and replace can be found here
#http://vim.wikia.com/wiki/Search_and_replace

#unwarp pyflex
Esc \za

#copy a single line
Esc yy
	p paste after
	P paste before

#matthew's vim
#download repo
#add your vimrc in the repo
#make
#make links

#copy to clipboard
Esc "+y

#paste from clipboard
Esc "+p		

#go to the first character in the line
Esc $

#go to last character of a line
Esc $

#find corresponding parentheses or brackets
Esc %
	Example: a=((a+b)+c)

#move fast between words (right)
Esc w 

#move fast between words (right)
Esc b

#move fast between word-ends (right)
Esc e 

#move fast between words (right)
Esc ge

#delete next character
Esc x

#delete previous character
Esc X

#Search in many files
:lvimgrep "import sympy" **/*.py

