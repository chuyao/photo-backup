#!/bin/bash

# adb path
ADB="/home/allen/Dev/android/sdk/platform-tools/adb"

# localsend main activity
localsend="org.localsend.localsend_app/.MainActivity"

# google photo
gphoto="com.google.android.apps.photos/.home.HomeActivity"

current_hour=$(date +%H)

if [ "$current_hour" == "00" ]; then
	# pull up google photo
	$ADB shell am start -n $gphoto
elif [ "$current_hour" == "05" ]; then
	# pull up localsend
	$ADB shell am start -n $localsend
fi
