#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run "setxkbmap -option ctrl:nocaps fi"
run redshift
#run syndaemon -i 1 -d
#run nm-applet
#run xfce4-power-manager

