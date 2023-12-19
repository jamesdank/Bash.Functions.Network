#!/bin/bash

##############################################################################
# Colors
green='\e[32m'
blue='\e[34m'
clear='\e[0m'
red='\033[0;31m'
nc='\033[0m'
##############################################################################

function color_green() {
    echo -ne $green$1$clear
}
function color_blue() {
    echo -ne $blue$1$clear
}

function nh () {
    sudo nethogs -v 3
}

function bndwth () {
    ip link show

    echo -e "\n\e[4mEnter interface to monitor\e[0m "
    read -p "Interface: " interface

    watch -n 600 vnstat -i $interface
}

function eip () {
    curl https://ipinfo.io/ip; echo "" ;
}

function iip () {
    hostname -I | cut -d ' ' -f1
}

function isp () {
    curl https://ipinfo.io/org; echo "" ;
}
