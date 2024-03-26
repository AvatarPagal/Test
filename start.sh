#!/bin/bash

sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver

sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
sudo systemctl disable lightdm.service
sudo apt install ./google-chrome-stable_current_amd64.deb
sudo apt install ./chrome-remote-desktop_current_amd64.deb

DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AeaYSHC5rQ-JFS4PncdDYPDLuIUk2sYuyeA_ZgddsvAw5IO09ModxoP55skqo3Np9qVOng" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)
