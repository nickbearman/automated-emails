#!/bin/bash

echo 'To:nick@nickbearman.me.uk' >> uptime.email
echo 'From: pandemic@nickbearman.me.uk' >> uptime.email
echo 'Subject: Uptime' >> uptime.email

echo 'Hello' >> uptime.email
uptime >> uptime.email
cat uptime.email | msmtp -a default nick@nickbearman.me.uk
rm uptime.email;


