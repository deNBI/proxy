#!/usr/bin/env bash

# Concatenate new cert files, with less output (avoiding the use tee and its output to stdout)
bash -c "cat /tmp/fullchain.pem /tmp/key.pem > /usr/local/etc/haproxy/haproxy.pem"

# Reload  HAProxy
haproxy -f /usr/local/etc/haproxy/haproxy.cfg -D -W
