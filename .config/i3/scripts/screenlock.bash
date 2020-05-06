#!/usr/bin/env bash

icon="$HOME/.config/i3/scripts/azalea_enter_pwd_icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot -o "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg"
