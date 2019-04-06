# add custom resolution
/usr/bin/xrandr
/usr/bin/xrandr --newmode '1600x900_60.00'  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
/usr/bin/xrandr --addmode LVDS-1 '1600x900_60.00'
/usr/bin/xrandr --output LVDS-1 --mode '1600x900_60.00'


# change background
/usr/bin/feh --bg-fill /home/luannm/person-girl-woman-night-camera-photography-1207048-pxhere.com.jpg

# effect transparent ...
/usr/bin/compton


# keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
