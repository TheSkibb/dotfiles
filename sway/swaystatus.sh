date=$(date "+%a %F %H:%M")

battery_percentage=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | awk '{print $2}')

echo  $battery_percentage 🔋 $date
