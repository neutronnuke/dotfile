#!/bin/sh

folder="${HOME}/Pictures/New"
# folder="${HOME}/Pictures"
pic=$(ls $folder/* | shuf -n1)

# values for picture-options: ‘none’, ‘wallpaper’, ‘centered’, ‘scaled’, ‘stretched’, ‘zoom’, ‘spanned’
# hyprctl hyprpaper wallpaper eDP-1,"file://$pic"
pkill swaybg
swaybg --output '*' --mode fill --image $pic & &>/dev/null
#notify-send --expire-time=1500 'Wallpaper change' $pic &

# swww img -t any --transition-speed 40 --transition-fps 90 $pic & &>/dev/null
# swww img -t any --transition-fps 90 ${pic} & &>/dev/null
# sleep 1
