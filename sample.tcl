#!/usr/bin/expect
#Start the guest VM

set workspace [lindex $argv 2]

eval spawn  ssh -i $workspace/.ssh/id_rsa kubernetes@192.168.0.131 kubectl get pods -n erp

set timeout 20
#Login process
expect "passphrase for key"
#Enter username
send "12345\r"
set timeout 250
expect "#"
