#!/usr/bin/expect
#Start the guest VM
eval spawn  ssh -i ~/.ssh/id_rsa kubernetes@192.168.0.131 kubectl get pods -n erp

set timeout 20
#Login process
expect "passphrase for key"
#Enter username
send "sLs@202!\r"
set timeout 250
expect "#"
