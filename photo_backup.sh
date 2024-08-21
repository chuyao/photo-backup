#!/bin/bash

# adb path
ADB=""

# localsend main activity
localsend="org.localsend.localsend_app/.MainActivity"

# google photo
gphoto=""

current_hour=$(date +%H)

if [ "$current_hour" == "00" ]; then
	# pull up google photo
	$ADB shell am start -n $gphoto
elif [ "$current_hour" == "05" ]; then
	# pull up localsend
	$ADB shell am start -n $localsend
fi
