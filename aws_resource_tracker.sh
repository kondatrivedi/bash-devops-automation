#!/bin/bash

#-----------------------------------------------------
#Author: Trivedi
#Date: 4th-jun-2026
#version: v1
#Purpose: This script will report the aws usage
#-----------------------------------------------------

set -x

#Output file
REPORT_FILE="/home/ubuntu/aws_resource_report_$(date +%Y-%m-%d).txt"


echo "==========AWS Resource Report - $(date) =========" > "$REPORT_FILE"



# AWS S3
# List s3 buckets
echo "print list of s3 buckets" >> "$REPORT_FILE"
aws s3 ls >> "$REPORT_FILE" 2>&1 



# AWS EC2
# List ec2 instances
echo "print list of ec2 instances" >> "$REPORT_FILE"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> "$REPORT_FILE" 2>&1

# AWS LAMBDA
# List lambda functions

echo "print list of lambda functions" >> "$REPORT_FILE"
aws lambda list-functions >> "$REPORT_FILE" 2>&1



# AWS IAM USERS
# List IAM Users
echo "print list of iam users" >> "$REPORT_FILE"
aws iam list-users >> "$REPORT_FILE" 2>&1


echo
echo "===================Report Complete================" >> "$REPORT_FILE"

