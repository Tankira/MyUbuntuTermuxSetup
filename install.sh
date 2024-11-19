#!/bin/bash
pkg update -y && pkg upgrade -y
pkg install x11-repo
pkg install termux-x11-nightly
pkg install pulseaudio
pkg install proot-distro
pkg install wget
clear

# Download Custom Script for Setup Ubuntu
wget "https://cdn.discordapp.com/attachments/762210463567052800/1308432757810270268/setup_ubuntu.sh?ex=673dec76&is=673c9af6&hm=1562a3ffc93dcf174333345709d7bc0a4207474b146df9306fb776602cee1fdc&"

# Proot-Distro install Ubuntu
proot-distro install ubuntu
proot-distro login ubuntu -- /data/data/com.termux/files/home/setup_ubuntu.sh
