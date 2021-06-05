#!/bin/bash


function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
run "picom -b --config /dev/null"
run "nitrogen --set-zoom-fill --random /home/nedo/wallpapers3monitors"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "dwmstatus 2>&1 >/dev/null &"
run "greenclip daemon"
