#!/bin/bash
if [ -z "$STATS_USERNAME" ]; then
    export STATS_USERNAME="admin"
fi  

if [ -z "$STATS_URI" ]; then
    export STATS_URI="/haproxy?stats"
fi  

if [ -n "$STATS_PASSWORD" ]
then
  echo "	stats enable\n" >> /etc/haproxy/haproxy.cfg
  echo "	stats auth $STATS_USERNAME:$STATS_PASSWORD\n" >> /etc/haproxy/haproxy.cfg
  echo "	stats uri $STATS_URI\n" >> /etc/haproxy/haproxy.cfg
fi

service haproxy start
exec yes > /dev/null
