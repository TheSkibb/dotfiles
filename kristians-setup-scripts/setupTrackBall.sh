#! /bin/sh
deviceID=$(xinput list | grep 'Kensington Expert Wireless TB Mouse' | awk '{print $8}' | sed 's/id=//g')
echo $deviceID

xinput set-button-map $deviceID 3, 2, 1


