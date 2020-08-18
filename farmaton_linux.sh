#!/bin/bash

#Functions if needed

function pause(){

read -t 30 -p "$*"

}

#Adding in linux stuff for wine & stuff

sudo apt-get upgrade -y

sudo apt-get install unzip -y

sudo apt-get update -y

sudo dpkg --add-architecture i386
		sudo apt-get update -y
		wget -qO- https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
		sudo apt-get install software-properties-common -y
		sudo apt-add-repository 'deb http://dl.winehq.org/wine-builds/ubuntu/ bionic main'
		wget -qO- https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key | sudo apt-key add -
		sudo sh -c 'echo "deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./" > /etc/apt/sources.list.d/obs.list'
		sudo apt-get update -y
		sudo apt-get install --install-recommends winehq-stable -y

wine --version

#Downloading AdoptOpenJDK Stuff

cd /home/$USER/Downloads

wget 'https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u265-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u265b01.msi'

pause 'Press [Enter] and go through the installer like you would normally on windows.'

msiexec /i 'OpenJDK8U-jdk_x64_windows_hotspot_8u265b01.msi'


#Making farmaton directory on desktop

mkdir /home/$USER/Desktop/Farmaton

wget https://farmaton.s3.amazonaws.com/Farmaton_Beta44.7.zip

unzip Farmaton_Beta44.7.zip -d /home/$USER/Desktop/Farmaton

echo Your custom java path for farmaton is: 

/home/$USER/.wine/drive_c/Program Files/AdoptOpenJDK/jdk-8.0.265.01-hotspot/bin/java.exe


PLEASE NOTE: 

Using this path is inteded for mirror mode use. If you plan on running non-mirror clients, you may use your preferred linux java version, or this one.

