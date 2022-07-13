#!/usr/bin/env bash

killall .waybar-wrapped

cd "$(dirname "$0")" || exit
sh ./makeStyle.sh``

waybar &
