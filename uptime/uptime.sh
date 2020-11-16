#!/bin/bash

echo 'To:nick@nickbearman.me.uk' >> uptime.email
echo 'From: pandemic@nickbearman.me.uk' >> uptime.email
echo 'Subject: Uptime' >> uptime.email

echo 'Hello Nick' >> uptime.email
echo 'pandemic has been up since' >> uptime.email
uptime -s >> uptime.email
echo 'That is:' >> uptime.email
uptime -p >> uptime.email
uptime >> uptime.email
cat uptime.email | msmtp -a default nick@nickbearman.me.uk
rm uptime.email;


