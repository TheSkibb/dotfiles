date=$(date "+%a %d/%m (%B) %H:%M")

battery_percentage=$(upower -i $(upower -e | grep 'BAT') | grep "percentage" | awk '{print $2}')
battery_state=$(upower -i $(upower -e | grep 'BAT') | grep "state" | awk '{print $2}')

volume=$(amixer sget Master | awk -F"[][]" '/Left:/ { print $2 }')
muted=$(amixer get Master | tail -n 1 | grep -c '\[on\]')

if [ $muted -ne "0" ]; then 
    volume_icon=🔊
else 
    volume_icon=🔇
fi

brightness=$(brightnessctl g)

# max brightness could be different for different computers,
# use "brightnessctl m" to find it
brightness_max=64764

brightness_percent=$(echo " scale=2; $brightness / $brightness_max * 100" | bc) 


echo $brightness_percent % 💡 "|"  $volume $volume_icon "|" $battery_percentage $battery_state "|" $date
