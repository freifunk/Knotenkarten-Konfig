#!/bin/bash

/opt/ffhh-map-backend/generate_aliases.py /etc/fastd/ffhh-mesh-vpn/peers/ > /opt/ffmap-backend-ng/aliases.json
/opt/ffmap-backend-ng/backend.py --aliases /opt/ffmap-backend-ng/aliases.json /opt/ffmap-backend-ng/gateways.json -m bat0:/var/run/alfred.sock -d /var/lib/ffmap-data/ -p 30 --vpn de:ad:be:ff:01:01 --vpn de:ad:be:ff:05:05 --vpn de:ad:be:ff:05:06 --vpn de:ad:be:ff:03:03 --vpn de:ad:be:ff:22:22 --vpn de:ad:be:ff:22:23 --vpn de:ad:be:ff:88:88 --vpn de:ad:be:ff:88:89 --vpn de:ad:bf:ff:88:88 --vpn de:ad:bf:ff:22:22 --vpn de:ad:bf:ff:03:03 --vpn de:ad:bf:ff:05:05 --vpn de:ad:bf:ff:01:01
cp /var/lib/ffmap-data/* /var/www/nodes_ng_ffhh/
