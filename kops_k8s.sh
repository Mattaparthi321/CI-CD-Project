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
