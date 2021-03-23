#!/bin/bash

# admin script to install a new course into dh2go
# expects to be run in a folder with 
#	adduser.conf
#  skel directory
#	teiln.csv with minimum of one column containing full names in the form prename surname

# output
#	user.list: file with just a list of users suitable for use with console commands
#	user:pass: file with a list of values in the form username:password for use with chpasswd
# 	teiln_full.csv: like teiln.csv with three additional columns username, password, user:pass

# variables - please fill out for every new course

GROUP="dh2go_ws"
TEACHER="vagrant"

######################################

# get base location 
BASEDIR=$(pwd)

# add course group
addgroup $GROUP

# add course folders
mkdir /srv/$GROUP
mkdir /srv/$GROUP/Kursmaterial
mkdir /srv/$GROUP/Austauschordner

# add symbolic link to course folder to the skel folder
ln -s /srv/$GROUP $BASEDIR/skel/Desktop/

# TODO
# if TEACHER account exists, then
# add to course group
# put symbolic links to the course folder on their Desktop

# else add TEACHER account 
adduser --conf adduser.conf --geco "" --disabled-login $TEACHER




# change rights for course folders
chown -R $TEACHER:$GROUP /srv/$GROUP
chmod 750 /srv/$GROUP
chmod 770 /srv/$GROUP/Austauschordner

# build userlist and user:pass list
python3 new_course.py


# add users 
while read line
do
	echo $line
	adduser --conf adduser.conf --geco "" --disabled-login $line
done < user.list


# set all users passwords according to user.pass
while read line
	do 
		chpasswd $line
	done < user.pass


