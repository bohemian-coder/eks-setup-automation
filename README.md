# eks-setup-automation -> A quick HowTo

Setup a cluster on Amazon EKS

Important Notes:
- Cluster is created from a linux vm setup using Vagrant.
- Host machine is a Mac M1, setup is developed to be compatible with Apple chip.
- Result is NOT all AWS free tier; due to Nat gateway, Elastic IP, and cluster charges. Please delete your cluster if using for test purposes
- This requires the host machine (Linux VM in this case) be pre-configured with AWS credentials; Create an AWS user (EKS Admin) with the following permissions;
      Cloud Formation |
      EKS |
      Auto Scaling |
      IAM Instance Profile && Role |
      EC2 - VPC, IGW
      
   For testing purposes; A user with AdministratorAccess will suffice


Steps:
1. Run ```vagrant up```
2. Run ```bash cluster_setup.sh```
