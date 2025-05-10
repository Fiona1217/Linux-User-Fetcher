#!/bin/sh -u
PATH=/bin:/usr/bin ; export PATH
umask 022

#this is a shell script to display user's username, UID, GID, the comment field, home directory, path to shell, and home directory size
userInfo=$(grep "^$1" /etc/passwd)

UID=$(echo "$userInfo" | cut -d: -f3)
GID=$(echo "$userInfo" | cut -d: -f4)
comment=$(echo "$userInfo" | cut -d: -f5)
home=$(echo "$userInfo" | cut -d: -f6)
pathShell=$(echo "$userInfo" | cut -d: -f7)
directorySize1=$(stat -c%s "$home" 2>/dev/null)
directorySize2=$((directorySize1 / 1000))

echo "Username: $1"
echo "UID: $UID"
echo "GID: $GID"
echo "Comment: $comment"
echo "Home Directory: $home"
echo "Path to Shell: $pathShell"
echo "Home Directory Size: ${directorySize2}KB"
echo "Current User: $USER"
echo "Current Home Directory: $HOME"
