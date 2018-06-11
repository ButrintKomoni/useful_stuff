#!/bin/bash


#yeyeyeye clean the shit out of it!
#mv this file to the /bin/ directory in order to make it a global script that can be called from anywhere.
#or add it in your .bashrc file


echo -n "Enter your username: "
read username

srm -v -f /home/$username/.bash_history
srm -v -f /home/$username/hydra.restore
srm -v -f -r /home/$username/.sqlmap/output/
srm -v -f -r /home/$username/.mozilla/firefox/*
srm -v -f -r /home/$username/.msf4/history
srm -v -f -r /home/$username/.config/chromium/Default
srm -v -f -r /home/$username/.cache/chromium/*
srm -v -f -r /home/$username/.cache/mozilla/firefox/*
srm -v -f -r /home/$username/.mozilla/firefox/*
srm -v -f /opt/metasploit-framework/*.jpeg
srm -v -f /home/$username/.msf4/logs/framework.log
srm -v -f /home/$username/.msf4/local/*.exe
srm -v -f /home/$username/Desktop/*.php
srm -v -f /home/$username/Desktop/*.py
srm -v -f /home/$username/Desktop/*.php
srm -v -f /home/$username/Desktop/*.rb
srm -v -f /home/$username/Desktop/*.sh
aptitude autoclean -y

