#!/bin/bash

echo "PARANOIA"

find / -print | while read files; do
    touch -d "$(date -r "$files") - 24 hours" "$files"
done


cp /var/log/auth.log /tmp/auth.log
cd /tmp/auth.log
sleep 0.2s 

cat /tmp/auth.log | grep -a "session opened" | cut -d " " -f 11,12,13,1,2,3 >> auth_today.log
sleep 0.3s

cat /etc/ssh/sshd_config | grep "AuthorizedKeysFile" >> /tmp/keys_config # in order to see if someone tried to add a configuration of public 'n' private keys in our sshd_config
