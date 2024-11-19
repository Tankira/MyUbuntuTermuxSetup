#!/bin/bash
pkg update -y && pkg upgrade -y
pkg install x11-repo
pkg install termux-x11-nightly
pkg install pulseaudio
pkg install proot-distro
pkg install wget
clear

# Download Custom Script for Setup Ubuntu
wget "https://raw.githubusercontent.com/Tankira/MyUbuntuTermuxSetup/refs/heads/main/setup_ubuntu.sh"

# Proot-Distro install Ubuntu
proot-distro install ubuntu
proot-distro login ubuntu -- /data/data/com.termux/files/home/setup_ubuntu.sh
