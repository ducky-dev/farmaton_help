#!/bin/sh

#Adding in linux stuff for wine & stuff

sudo apt-get upgrade -y

sudo apt-get install unzip -y

sudo apt-get update -y

sudo apt-get install wine64 -y

wine --version

#Downloading AdoptOpenJDK Stuff

cd /home/$USER/Downloads

wget https://github.com/ducky-dev/farmaton_help/blob/master/AdoptOpenJDK.zip

unzip /home/$USER/Downloads/AdoptOpenJDK.zip -d /home/$USER/.wine64/drive_c/Program Files

mkdir /home/$USER/Desktop/Farmaton

wget https://farmaton.s3.amazonaws.com/Farmaton_Beta44.7.zip

unzip Farmaton_Beta44.7.zip -d /home/$USER/Desktop/Farmaton




