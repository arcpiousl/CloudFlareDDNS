#!/bin/bash

########## Edit the following lines ##########
IPv4=true
IPv6=false
Logfile="C:/Tmps/log/ddns.log"
URL="http://arcloud.name/updateCloudFlare.php"
Token="Kl5O7e0OGLo0yaFxIkWG"
##############################################

date >> $Logfile
if $IPv4; then
  wget -4qO- --post-data="auth=$Token" $URL >> $Logfile
fi
if $IPv6; then
  wget -6qO- --post-data="auth=$Token" $URL >> $Logfile
fi
