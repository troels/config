#!/usr/bin/env bash

eval $(ssh-agent)
setxkbmap -option ctrl:nocaps
wmname LG3D
exec xmonad
