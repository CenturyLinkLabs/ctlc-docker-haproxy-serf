#!/bin/bash
exec haproxy -f /etc/haproxy/haproxy.cfg -n 1024 -N 1024 -db -p /var/run/haproxy.pid
