#!/bin/sh

# Common general recommendations actions to do after 
# install Arch Linux distribution

# enabling services
systemctl enable ntpd
systemctl enable org.cups.cupsd

# starting services
systemctl start ntpd
systemctl start org.cups.cupsd


