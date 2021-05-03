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

# TODO
# if TEACHER account exists, then
if id -u "$TEACHER" &>/dev/null; then
	adduser $TEACHER $GROUP						# add teacher to course group
# else add TEACHER account 
else
adduser --conf adduser.conf --geco "" --disabled-login $TEACHER
# add symbolic link to course folder 
fi

# add course folders
mkdir /home/.srv/$GROUP
mkdir /home/.srv/$GROUP/Kursmaterial
mkdir /home/.srv/$GROUP/Austauschordner


# change rights for course folders
chown -R $TEACHER:$GROUP /home/.srv/$GROUP		# 
chmod -R 750 /home/.srv/$GROUP						# 
chmod 770 /home/.srv/$GROUP/Austauschordner

# build userlist and user:pass list
python3 new_course.py



while read line; do
	while IFS=':' read -ra USERPASS; do		# read user:pass
		USER="${USERPASS[0]}"					# extract username
		# check if user exists
		if id -u "$USER" &>/dev/null; then		# if yes, then
			adduser $USER $GROUP						# add user to course group
			echo "Added existing $USER to $GROUP."
		else
			adduser --conf adduser.conf --geco "" --disabled-login $USER	# add user
			chpasswd $line								# change password
			echo "Added new user $USER."
		fi

		ln -s /home/.srv/$GROUP /home/$USER/Desktop/	 # add course folder to user's Desktop
		chown -h $USER:$USER /home/$USER/Desktop/$GROUP	# give ownership for symlink to the user
	done <<< $line
done < user.pass
	

