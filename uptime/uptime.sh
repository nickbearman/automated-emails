#!/bin/bash
uptime >> uptime.email
cat uptime.email | msmtp -a default nick@nickbearman.me.uk;


