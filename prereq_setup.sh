#Shell script to download and install prerequisite tools needed for cluster setup 

#check packet manager availability 
yum --help &>> /dev/null
if [ $? -eq 0 ]
then
  yum install zip unzip -y
else
  sudo apt update && sudo apt install zip unzip -y
fi
unzip -hh

curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

curl -sLO "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_arm64.tar.gz"
tar -xf eksctl_$(uname -s)_arm64.tar.gz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"

chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
kubectl version --short --client

# Curl URLs for AMD architecture
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#curl -sLO "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz"
#curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
