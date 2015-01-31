#!/bin/bash

# note that this command is executed with postgres priviledges. 
# becuase of that both nodes needs access to user which runs load balancer.

LB_HOST=""
LB_USER=""
SOURCE_LB_CONFIG=~/configs/lb.configuration
LB_CONFIG_LOCATION=/etc/lb
repmgr standby promote -f /var/lib/postgresql/9.3/main/repmgr/repmgr.conf
scp ${LB_CONFIG} ${LB_USER}@${LB_HOST}:${LB_CONFIG_LOCATION}
ssh ${LB_USER}@${LB_HOST} lb reload
