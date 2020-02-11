#!/bin/bash

FILE=/var/cache/squid/generate.lck
if [ ! -f "$FILE" ]; then
    chown squid:squid -Rvf /var/cache/squid
    /usr/bin/squid -z
    sleep 5
    touch $FILE
fi


/usr/bin/squid -NYCd 1 -f /etc/squid/squid.conf > /dev/null
tail -f /var/log/squid/access.log