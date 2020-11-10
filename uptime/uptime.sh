#!/bin/bash

echo 'Hello' >> uptime.email
uptime >> uptime.email
cat uptime.email | msmtp -a default nick@nickbearman.me.uk
rm uptime.email;


