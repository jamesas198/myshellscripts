
#!/bin/bash

####################EC2 Resource Test script####################

###Author:James############################
##This Script will list the AWS resource usage################
################


set -x
set -eo pipefail
date >>Resource_Tracker_james



###List AWS EC2 Instance >>Resource_Tracker_james
echo "Print List of AWS EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

####List Of S3 Buckets############  >>Resource_Tracker_james
echo "Print List of s3 buckets"

aws s3 ls

###List or IAM users########## >>Resource_Tracker_james

echo " Print List of IAM users"

aws iam list-users 



