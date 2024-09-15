#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair.pem ec2-user@52.221.180.60 "source ~/.bash_profile; /home/ec2-user/.local/bin/pcluster update-compute-fleet --status STOP_REQUESTED -n MyCluster01; ~/update_snapshot.sh data 2 MyCluster01"

arn:aws:sns:ap-southeast-1:203918889266:awsnotify --message "EC2SnapshotCompleted"
