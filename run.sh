#!/bin/bash

echo $MAIL_PASSWORD | saslpasswd2 -c -u $MAIL_DOMAIN $MAIL_USER
sasldblistusers2
service rsyslog start
service postfix start
exec tail -f /var/log/mail.log
