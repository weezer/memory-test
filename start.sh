#!/usr/bin/env bash

echo "Hello Kubernetes" > /usr/share/nginx/html/index.html
nginx &
sleep `tr -cd 0-9 </dev/urandom | head -c 2`
stress --vm 4 --timeout 100 --vm-bytes 6000M
