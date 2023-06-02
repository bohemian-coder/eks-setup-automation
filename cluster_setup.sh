/bin/bash create_keypair.sh

if [ $? -eq 0 ]
then
    # Variables
    CLUSTER_NAME=demo-eks-cluster
    REGION=us-east-1
    NODE_NAME=Demo-nodes
    KEY_NAME=ekskey

    # Creating EKS cluster
    eksctl create cluster \
    --name $CLUSTER_NAME \
    --version 1.27 \
    --region $REGION \
    --nodegroup-name $NODE_NAME \
    --nodes 2 \
    --nodes-min 1 \
    --nodes-max 3 \
    --node-type t3.micro \
    --node-volume-size 8 \
    --ssh-access \
    --ssh-public-key $KEY_NAME \
    --managed
    if [ $? -eq 0 ]
    then
        echo "Cluster Setup Successful."
    else
        echo "Cluster Setup Failed."
    fi

else
    echo "Keypair creation failed. Cluster setup aborted"
fi
