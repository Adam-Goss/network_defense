#!/usr/bin/bash
# run_suricata.sh - bash script to initialise Suricata IDS

# packet offload disabled 
ethtool -K eth1 gro off lro off
# update signatures
suricata-update
# restart suricata service
systemctl restart suricata
# inspect log file to make sure it is running correctly
cat /var/log/suricata/suricata.log
