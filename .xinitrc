#!/bin/sh
xrdb -merge ~/.Xdefaults
setxkbmap -layout 'us,ru' -variant 'altgr-intl,winkeys' -option grp:alt_shift_toggle
exec i3
