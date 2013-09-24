.. include:: links.rst


====================
Another Git Tutorial
====================


Github Notes
============

Introduction
------------

My notes after watching the intoductory videos at github_. The link for the videos can by found at `learn.github.com`_. I also used gitref.org.

http://try.github.com/levels/1/challenges/1


Cheat Sheet
============

Unstage staged files
--------------------

git reset HEAD -- file.txt

-- is used to tell Git when you have stopped listing options and are now listing file paths.

By "unstage" I mean it reverts the staging area to what was there before we started modifying things. 

Remove or mv files
------------------

git rm on the other hand just kicks the file off the stage entirely, so that it's not included in the next commit snapshot, thereby effectively deleting it.

By default, a git rm file will remove the file from the staging area entirely and also off your disk (the working directory). To leave the file in the working directory, you can use git rm --cached .

git mv 

This is the same as

git rm --cached orig; mv orig new; git add new


Show the changes that have been staged
--------------------------------------

git diff --staged

Adding remotes
--------------

My friend has a branch called a_branch and I want to start working on that branch.

I will use the name friend_rep for my friends repo.

git remote add friend_rep git://github.com/TestRep/dipy.git

Inspecting that all is good

git remote -v

Downloading the repo

git fetch friend_rep

Checking out with a new branch with the same name as my friends branch. Important option here is -t which will create a branch with that name.

git checkout -t friend_rep/a_branch

If you use git checkout friend_rep/a_branch then no new branch with the same
name is created.


Merge the repo with out checkout
--------------------------------

git merge friend_rep/a_branch 


Word by word and coloured diffs
-------------------------------

git diff --color --word-diff master another_branch
git diff --color --word-diff master HEAD~3

Pretty logs with diffs
----------------------

git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)[%an]%Creset' --abbrev-commit --date=relative

Clean all untracked files
-------------------------

git clean -fxd

Git annex - for storing big files
----------------------------------

git annex init "`hostname` :`pwd`"

git annex add big_file.tmp

git annex status

git annex sync

git annex whereis big_file.tmp

git annex drip big_file.tmp

More info http://git-annex.branchable.com/walkthrough/

Delete a branch and from the origin
------------------------------------

git branch -D old_name

git push origin :old_name

Rename a branch
---------------

git branch -m old_name new_name

Will most likely have to remove the branch from origin too.

git push origin :old_name


Workflow (the cool way) using github
------------------------------------

#fork the repo in github

#clone the repo

git clone git@github.com:Garyfallidis/dipy.git

#inspect remotes

git remote -v

#show all branches

git branch -a

#add upstream to the main repo with read + write access (power user)

git remote add upstream-rw git@github.com:nipy/dipy.git

git fetch upstream-rw

#inspect config 

git config -l

#create a branch only as a pointer to the main repo

git branch placeholder

#push placeholder upstream 

git push origin placeholder -u

#create a branch that tracks upstream

git branch main-master --track upstream-rw/master 

git checkout main-master

git pull

#do changes and then push back to upstream

git push upstream-rw main-master:master
#create a temporary branch to later do a pull request

git branch dsi_rf

git checkout dsi_rf

#connect with the remote

git config branch.dsi_rf.remote origin
git config branch.dsi_rf.merge refs/heads/dsi_rf

# commit, push
# finally do a pull request from github


Stashing
---------

You work on a branch by the name of my_branch

git stash

git checkout -b test_branch

git commit etc.

git checkout my_branch

git stash apply

git commit etc.


Rebase
------
git checkout your_branch
git rebase nipy-dipy-master
git push -f oring your_branch


Merge specific files from another git repo
------------------------------------------
git checkout my_repo
git checkout other_repo/branch file1 file2

git commit -m "..."


Copy specific lines from one branch file to another
---------------------------------------------------
git checkout my_repo
git difftool -t diffuse other_repo/branch -- paper/dipy_paper.tex



