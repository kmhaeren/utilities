#!/bin/zsh

export wallpaper_path=/home/karel/Pictures/backgrounds
setopt CSH_NULL_GLOB

while true
do
	wallpapers=(
		"$wallpaper_path"/*.jpg
		"$wallpaper_path"/*.jpeg
		"$wallpaper_path"/*.png
		"$wallpaper_path"/*.bmp
		"$wallpaper_path"/*.svg
	)
	wallpapers_size=${#wallpapers[*]}	
    index=$(shuf -i 1-${wallpapers_size} -n 1)
    gsettings set org.gnome.desktop.background picture-uri-dark "${wallpapers[$index]}"

    sleep 10m
done
