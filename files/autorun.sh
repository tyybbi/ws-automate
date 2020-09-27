#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run redshift
run urxvtd -q -o -f
#run syndaemon -i 1 -d
run nm-applet
#run xfce4-power-manager

