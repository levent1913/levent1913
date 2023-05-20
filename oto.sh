#!/bin/bash


response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region us-east-1)
HostId1=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId1" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text


sleep 2h


response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region us-east-1)
HostId2=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId2" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6a.48xlarge" --region us-east-1)
HostId3=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId3" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region us-east-1)
HostId4=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId4" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region us-east-1)
HostId5=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId5" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text


sleep 2h


response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region us-east-2)
HostId1=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId1" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region us-east-2)
HostId2=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId2" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6a.48xlarge" --region us-east-2)
HostId3=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId3" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region us-east-2)
HostId4=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId4" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region us-east-2)
HostId5=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId5" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region us-west-2)
HostId1=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId1" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region us-west-2)
HostId2=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId2" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6a.48xlarge" --region us-west-2)
HostId3=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId3" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region us-west-2)
HostId4=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId4" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region us-west-2)
HostId5=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId5" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region eu-west-1)
HostId1=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId1" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region eu-west-1)
HostId2=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId2" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6a.48xlarge" --region eu-west-1)
HostId3=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId3" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region eu-west-1)
HostId4=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId4" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region eu-west-1)
HostId5=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId5" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region ap-northeast-1)
HostId1=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId1" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region ap-northeast-1)
HostId2=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId2" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

sleep 20m

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region ap-northeast-1)
HostId1=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId1" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6a.48xlarge" --region ap-northeast-1)
HostId2=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId2" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6a.48xlarge" --region ap-northeast-1)
HostId3=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId3" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region ap-northeast-1)
HostId4=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId4" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6a.48xlarge" --region ap-northeast-1)
HostId5=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId5" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

sleep 40m

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region us-east-1)
HostId6=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId6" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region us-east-1)
HostId7=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId7" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region us-east-1)
HostId8=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId8" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region us-east-1)
HostId9=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId9" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region us-east-1)
HostId10=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId10" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region us-east-1)
HostId11=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId11" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region us-east-1)
HostId12=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId12" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region us-east-1)
HostId13=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId13" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region us-east-1)
HostId14=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId14" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region us-east-1)
HostId15=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId15" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region us-east-1)
HostId16=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId16" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region us-east-1)
HostId17=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId17" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region us-east-1)
HostId18=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId18" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region us-east-1)
HostId19=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId19" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region us-east-1)
HostId20=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId20" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region us-east-1)
HostId21=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId21" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6i.32xlarge" --region us-east-1)
HostId22=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId22" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6id.32xlarge" --region us-east-1)
HostId23=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId23" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region us-east-1)
HostId24=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId24" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region us-east-1)
HostId25=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId25" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region us-east-1)
HostId26=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId26" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region us-east-1)
HostId27=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId27" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5.24xlarge" --region us-east-1)
HostId28=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId28" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region us-east-1)
HostId29=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId29" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region us-east-1)
HostId30=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId30" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region us-east-1)
HostId31=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId31" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region us-east-1)
HostId32=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId32" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region us-east-1)
HostId33=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId33" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region us-east-1)
HostId34=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId34" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5b.24xlarge" --region us-east-1)
HostId35=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId35" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region us-east-1)
HostId36=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId36" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region us-east-1)
HostId37=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId37" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region us-east-1)
HostId38=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId38" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region us-east-1)
HostId39=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId39" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region us-east-1)
HostId40=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId40" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region us-east-1)
HostId41=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId41" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region us-east-1)
HostId42=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId42" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region us-east-1)
HostId43=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-007855ac798b5175e --count 1 --placement "HostId=$HostId43" --user-data file://fire.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region us-east-1)
HostId44=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0c6c29c5125214c77 --count 3 --placement "HostId=$HostId44" --user-data file://firem.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region us-east-1)
HostId45=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0c6c29c5125214c77 --count 3 --placement "HostId=$HostId45" --user-data file://firem.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region us-east-1)
HostId46=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0c6c29c5125214c77 --count 3 --placement "HostId=$HostId46" --user-data file://firem.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region us-east-1)
HostId47=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0c6c29c5125214c77 --count 3 --placement "HostId=$HostId47" --user-data file://firem.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region us-east-1)
HostId48=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0c6c29c5125214c77 --count 3 --placement "HostId=$HostId48" --user-data file://firem.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-1f" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region us-east-1)
HostId49=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0c6c29c5125214c77 --count 3 --placement "HostId=$HostId49" --user-data file://firem.txt --region us-east-1 --query 'Instances[*].InstanceId' --output text


response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region us-east-2)
HostId6=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId6" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region us-east-2)
HostId7=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId7" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region us-east-2)
HostId8=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId8" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region us-east-2)
HostId9=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId9" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region us-east-2)
HostId10=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId10" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region us-east-2)
HostId11=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId11" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region us-east-2)
HostId12=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId12" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region us-east-2)
HostId13=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId13" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region us-east-2)
HostId14=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId14" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region us-east-2)
HostId15=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId15" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region us-east-2)
HostId16=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId16" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region us-east-2)
HostId17=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId17" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region us-east-2)
HostId18=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId18" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region us-east-2)
HostId19=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId19" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region us-east-2)
HostId20=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId20" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region us-east-2)
HostId21=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId21" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6i.32xlarge" --region us-east-2)
HostId22=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId22" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6id.32xlarge" --region us-east-2)
HostId23=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId23" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region us-east-2)
HostId24=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId24" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region us-east-2)
HostId25=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId25" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region us-east-2)
HostId26=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId26" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region us-east-2)
HostId27=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId27" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5.24xlarge" --region us-east-2)
HostId28=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId28" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region us-east-2)
HostId29=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId29" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region us-east-2)
HostId30=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId30" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region us-east-2)
HostId31=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId31" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region us-east-2)
HostId32=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId32" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region us-east-2)
HostId33=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId33" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region us-east-2)
HostId34=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId34" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5b.24xlarge" --region us-east-2)
HostId35=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId35" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region us-east-2)
HostId36=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId36" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region us-east-2)
HostId37=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId37" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region us-east-2)
HostId38=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId38" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region us-east-2)
HostId39=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId39" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region us-east-2)
HostId40=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId40" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region us-east-2)
HostId41=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId41" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region us-east-2)
HostId42=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId42" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region us-east-2)
HostId43=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0a695f0d95cefc163 --count 1 --placement "HostId=$HostId43" --user-data file://fire.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region us-east-2)
HostId44=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0af198159897e7a29 --count 3 --placement "HostId=$HostId44" --user-data file://firem.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region us-east-2)
HostId45=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0af198159897e7a29 --count 3 --placement "HostId=$HostId45" --user-data file://firem.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region us-east-2)
HostId46=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0af198159897e7a29 --count 3 --placement "HostId=$HostId46" --user-data file://firem.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region us-east-2)
HostId47=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0af198159897e7a29 --count 3 --placement "HostId=$HostId47" --user-data file://firem.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region us-east-2)
HostId48=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0af198159897e7a29 --count 3 --placement "HostId=$HostId48" --user-data file://firem.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-east-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region us-east-2)
HostId49=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0af198159897e7a29 --count 3 --placement "HostId=$HostId49" --user-data file://firem.txt --region us-east-2 --query 'Instances[*].InstanceId' --output text


response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region us-west-2)
HostId6=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId6" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region us-west-2)
HostId7=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId7" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region us-west-2)
HostId8=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId8" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region us-west-2)
HostId9=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId9" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region us-west-2)
HostId10=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId10" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region us-west-2)
HostId11=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId11" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region us-west-2)
HostId12=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId12" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region us-west-2)
HostId13=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId13" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region us-west-2)
HostId14=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId14" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region us-west-2)
HostId15=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId15" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region us-west-2)
HostId16=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId16" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region us-west-2)
HostId17=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId17" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region us-west-2)
HostId18=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId18" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region us-west-2)
HostId19=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId19" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region us-west-2)
HostId20=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId20" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region us-west-2)
HostId21=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId21" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6i.32xlarge" --region us-west-2)
HostId22=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId22" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6id.32xlarge" --region us-west-2)
HostId23=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId23" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region us-west-2)
HostId24=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId24" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region us-west-2)
HostId25=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId25" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region us-west-2)
HostId26=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId26" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region us-west-2)
HostId27=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId27" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5.24xlarge" --region us-west-2)
HostId28=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId28" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region us-west-2)
HostId29=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId29" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region us-west-2)
HostId30=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId30" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region us-west-2)
HostId31=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId31" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region us-west-2)
HostId32=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId32" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region us-west-2)
HostId33=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId33" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region us-west-2)
HostId34=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId34" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5b.24xlarge" --region us-west-2)
HostId35=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId35" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region us-west-2)
HostId36=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId36" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region us-west-2)
HostId37=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId37" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region us-west-2)
HostId38=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId38" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region us-west-2)
HostId39=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId39" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region us-west-2)
HostId40=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId40" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region us-west-2)
HostId41=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId41" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region us-west-2)
HostId42=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId42" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region us-west-2)
HostId43=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0fcf52bcf5db7b003 --count 1 --placement "HostId=$HostId43" --user-data file://fire.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region us-west-2)
HostId44=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-03f6bd8c9c6230968 --count 3 --placement "HostId=$HostId44" --user-data file://firem.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region us-west-2)
HostId45=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-03f6bd8c9c6230968 --count 3 --placement "HostId=$HostId45" --user-data file://firem.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region us-west-2)
HostId46=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-03f6bd8c9c6230968 --count 3 --placement "HostId=$HostId46" --user-data file://firem.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region us-west-2)
HostId47=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-03f6bd8c9c6230968 --count 3 --placement "HostId=$HostId47" --user-data file://firem.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region us-west-2)
HostId48=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-03f6bd8c9c6230968 --count 3 --placement "HostId=$HostId48" --user-data file://firem.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "us-west-2c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region us-west-2)
HostId49=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-03f6bd8c9c6230968 --count 3 --placement "HostId=$HostId49" --user-data file://firem.txt --region us-west-2 --query 'Instances[*].InstanceId' --output text


response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region eu-west-1)
HostId6=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId6" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region eu-west-1)
HostId7=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId7" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region eu-west-1)
HostId8=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId8" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region eu-west-1)
HostId9=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId9" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region eu-west-1)
HostId10=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId10" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region eu-west-1)
HostId11=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId11" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region eu-west-1)
HostId12=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId12" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region eu-west-1)
HostId13=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId13" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region eu-west-1)
HostId14=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId14" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region eu-west-1)
HostId15=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId15" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region eu-west-1)
HostId16=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId16" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region eu-west-1)
HostId17=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId17" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region eu-west-1)
HostId18=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId18" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region eu-west-1)
HostId19=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId19" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region eu-west-1)
HostId20=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId20" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region eu-west-1)
HostId21=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId21" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6i.32xlarge" --region eu-west-1)
HostId22=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId22" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6id.32xlarge" --region eu-west-1)
HostId23=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId23" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region eu-west-1)
HostId24=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId24" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region eu-west-1)
HostId25=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId25" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region eu-west-1)
HostId26=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId26" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region eu-west-1)
HostId27=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId27" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5.24xlarge" --region eu-west-1)
HostId28=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId28" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region eu-west-1)
HostId29=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId29" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region eu-west-1)
HostId30=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId30" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region eu-west-1)
HostId31=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId31" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region eu-west-1)
HostId32=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId32" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region eu-west-1)
HostId33=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId33" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region eu-west-1)
HostId34=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId34" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5b.24xlarge" --region eu-west-1)
HostId35=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId35" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region eu-west-1)
HostId36=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId36" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region eu-west-1)
HostId37=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId37" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region eu-west-1)
HostId38=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId38" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region eu-west-1)
HostId39=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId39" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region eu-west-1)
HostId40=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId40" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region eu-west-1)
HostId41=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId41" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region eu-west-1)
HostId42=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId42" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region eu-west-1)
HostId43=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-00aa9d3df94c6c354 --count 1 --placement "HostId=$HostId43" --user-data file://fire.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region eu-west-1)
HostId44=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0e6902f007857ad9c --count 3 --placement "HostId=$HostId44" --user-data file://firem.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region eu-west-1)
HostId45=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0e6902f007857ad9c --count 3 --placement "HostId=$HostId45" --user-data file://firem.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region eu-west-1)
HostId46=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0e6902f007857ad9c --count 3 --placement "HostId=$HostId46" --user-data file://firem.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region eu-west-1)
HostId47=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0e6902f007857ad9c --count 3 --placement "HostId=$HostId47" --user-data file://firem.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region eu-west-1)
HostId48=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0e6902f007857ad9c --count 3 --placement "HostId=$HostId48" --user-data file://firem.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "eu-west-1c" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region eu-west-1)
HostId49=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0e6902f007857ad9c --count 3 --placement "HostId=$HostId49" --user-data file://firem.txt --region eu-west-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region ap-northeast-1)
HostId6=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId6" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region ap-northeast-1)
HostId7=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId7" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region ap-northeast-1)
HostId8=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId8" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region ap-northeast-1)
HostId9=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId9" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6i.32xlarge" --region ap-northeast-1)
HostId10=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId10" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6id.32xlarge" --region ap-northeast-1)
HostId11=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId11" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6idn.32xlarge" --region ap-northeast-1)
HostId12=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId12" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c6in.32xlarge" --region ap-northeast-1)
HostId13=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId13" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region ap-northeast-1)
HostId14=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId14" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region ap-northeast-1)
HostId15=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId15" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region ap-northeast-1)
HostId16=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId16" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region ap-northeast-1)
HostId17=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId17" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6i.32xlarge" --region ap-northeast-1)
HostId18=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId18" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6id.32xlarge" --region ap-northeast-1)
HostId19=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId19" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6idn.32xlarge" --region ap-northeast-1)
HostId20=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId20" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r6in.32xlarge" --region ap-northeast-1)
HostId21=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId21" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6i.32xlarge" --region ap-northeast-1)
HostId22=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId22" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6id.32xlarge" --region ap-northeast-1)
HostId23=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId23" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region ap-northeast-1)
HostId24=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId24" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region ap-northeast-1)
HostId25=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId25" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6idn.32xlarge" --region ap-northeast-1)
HostId26=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId26" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m6in.32xlarge" --region ap-northeast-1)
HostId27=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId27" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5.24xlarge" --region ap-northeast-1)
HostId28=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId28" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region ap-northeast-1)
HostId29=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId29" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region ap-northeast-1)
HostId30=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId30" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region ap-northeast-1)
HostId31=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId31" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5d.24xlarge" --region ap-northeast-1)
HostId32=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId32" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5dn.24xlarge" --region ap-northeast-1)
HostId33=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId33" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m5n.24xlarge" --region ap-northeast-1)
HostId34=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId34" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5b.24xlarge" --region ap-northeast-1)
HostId35=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId35" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region ap-northeast-1)
HostId36=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId36" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region ap-northeast-1)
HostId37=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId37" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region ap-northeast-1)
HostId38=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId38" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region ap-northeast-1)
HostId39=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId39" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5.24xlarge" --region ap-northeast-1)
HostId40=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId40" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5d.24xlarge" --region ap-northeast-1)
HostId41=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId41" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5dn.24xlarge" --region ap-northeast-1)
HostId42=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId42" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r5n.24xlarge" --region ap-northeast-1)
HostId43=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-0d979355d03fa2522 --count 1 --placement "HostId=$HostId43" --user-data file://fire.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region ap-northeast-1)
HostId44=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-01a777eb1a2618535 --count 3 --placement "HostId=$HostId44" --user-data file://firem.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region ap-northeast-1)
HostId45=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-01a777eb1a2618535 --count 3 --placement "HostId=$HostId45" --user-data file://firem.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region ap-northeast-1)
HostId46=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-01a777eb1a2618535 --count 3 --placement "HostId=$HostId46" --user-data file://firem.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text
response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "c7g.16xlarge" --region ap-northeast-1)
HostId47=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-01a777eb1a2618535 --count 3 --placement "HostId=$HostId47" --user-data file://firem.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "r7g.16xlarge" --region ap-northeast-1)
HostId48=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-01a777eb1a2618535 --count 3 --placement "HostId=$HostId48" --user-data file://firem.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text

response=$(aws ec2 allocate-hosts --availability-zone "ap-northeast-1d" --auto-placement "off" --host-recovery "off" --host-maintenance "off" --quantity 1 --instance-type "m7g.16xlarge" --region ap-northeast-1)
HostId49=$(echo $response | jq -r '.HostIds[0]')  
aws ec2 run-instances --image-id ami-01a777eb1a2618535 --count 3 --placement "HostId=$HostId49" --user-data file://firem.txt --region ap-northeast-1 --query 'Instances[*].InstanceId' --output text
