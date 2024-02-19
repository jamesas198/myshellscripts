############# AWS Resource Tracker##########


#Author James

##############################
set -x

## List AWS S3 buckets
echo "Print list of s3 buckets"
aws s3 ls



##List of EC2 Instances
echo "Print list of EC2 instances"
##aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId"
##
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

