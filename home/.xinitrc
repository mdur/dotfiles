#!/bin/bash
#
# Sample .xinitrc for SuSE Linux
# This script is called from 'startx' when you start an X session
#

#
# In case everything goes wrong, we at least fall back to a plain xterm
#
failsafe="xterm -ls -T Failsafe -geometry 80x24-0-0"
trap "exec $failsafe" EXIT SIGHUP SIGINT SIGPIPE SIGTERM SIGIO

#
# Some bash (1 and 2) settings to avoid trouble on a
# failed program call.
#
set +e > /dev/null 2>&1
set +u > /dev/null 2>&1
set +o posix  > /dev/null 2>&1
if type shopt > /dev/null 2>&1 ; then
    shopt -s execfail
else
    no_exit_on_failed_exec=1
fi

#
# Source common code shared between the
# X session and X init scripts
#
. /etc/X11/xinit/xinitrc.common

#
# Special for twm
#
case "$WINDOWMANAGER" in
    *twm) xsetroot -solid darkslateblue
esac

#
# Uncomment next lines to activate asking for ssh passphrase
#
# if test -S "$SSH_AUTH_SOCK" -a -x "$SSH_ASKPASS"; then
#       ssh-add < /dev/null
# fi

#
# Add your own lines here...
#
/usr/bin/xscreensaver -no-splash &
xset b off
# day planer deamon
# pland &
if [[ `hostname -f` =~ eno.* ]]; then
    Display1='DVI-0'
    Display2='DisplayPort-0'
    /usr/bin/xrandr --output $Display1 --primary
    /usr/bin/xrandr --output $Display1 --left-of $Display2
    /usr/bin/xrandr --output $Display1 --mode 1920x1080
    /usr/bin/xrandr --output $Display2 --mode 1920x1080
fi

# 
# finally start the window manager
#
unset WINDOW_MANAGER STARTUP
exec $WINDOWMANAGER ${1+"$@"}
# call failsafe
exit 0
