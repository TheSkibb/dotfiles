#!/bin/sh

scriptDir=~/.config/kristians-setup-scripts/

scripts=$(ls $scriptDir | rofi -dmenu)
$scriptDir$scripts

