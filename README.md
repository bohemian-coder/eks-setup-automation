# eks-setup-automation -> A quick HowTo

Setup a cluster on Amazon EKS

Important Notes:
- The cluster is created from a linux vm setup using Vagrant.
- Host machine is a Mac M1, setup is developed to be compatible with Apple chips
- Setup is NOT all AWS free tier; due to Nat gateway, Elastic IP, and cluster charges. Please delete your cluster if using for test purposes
- This requires the host machine be configured with AWS credentials; Create AWS user (EKS Admin) with the following     permissions;
      Cloud Formation
      EKS
      Auto Scaling
      IAM Instance Profile && Role
      EC2 - VPC, IGW
      
   Alternative for testing purposes: A user with administrator access
