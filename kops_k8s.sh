#/bin/bash
# installtion kubernates cluster KOPS in ubuntu
# prerequset AWS accout
# s3bucketand Route53 confguration
# This script install kops and kubectl and AWS cli
# once this script run then do below steps
# creat IAM ROLE and atach to management server
# AWS Access Key ID [****************6J]:
# AWS Secret Access Key [****************s1]:
# Default region name [s3://msubhashini.xyz]: us-east-1
# ssh-keygen then add you private key  content with key gen to idrsa.pub 

wget https://github.com/kubernetes/kops/releases/download/v1.20.1/kops-linux-amd64
chmod 700 kops-linux-amd64
mv kops-linux-amd64 /usr/local/bin/kops
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO https://dl.k8s.io/release/v1.21.0/bin/linux/amd64/kubectl
chmod 700 kubectl
mv kubectl /usr/local/bin/kubectl
apt-get update
apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
