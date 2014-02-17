#!/bin/bash
haproxy -f /etc/haproxy/haproxy.cfg -p /var/run/haproxy.pid -D
exec yes > /dev/null
