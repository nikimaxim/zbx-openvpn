#!/bin/bash
#
#    .VERSION
#    0.1
#
#    .DESCRIPTION
#    Author: Nikitin Maksim
#    Github: 
#    Note: Zabbix lld for openvpn
#
#    .TESTING
#    Openvpn: 2.4 and later
#

IPP='/etc/openvpn/ipp.txt'
CCD='/etc/openvpn/ccd'

# Get users
users=`(cat ${IPP} | cut -f1 -d","; ls -F ${CCD} | sed 's/\///g') | sort -u`

for user in $users; do
        user="{\"{#VPN.USER}\":\"${user}\"},"
        users_json=$users_json$user
done

echo "{\"data\":[$(echo ${users_json} | sed -e 's/,$//')]}"
