aws sts get-caller-identity >> /dev/null
if [ $? -eq 0 ]
then

    echo "aws user is configured, creating key pair..."

    #create key pair
    aws ec2 create-key-pair --key-name ekskey --query 'KeyMaterial' --output text > ekskey.pem
    chmod 400 ekskey.pem

else
    echo "aws is not configured on this system. Please set up a user with adequate permissions 'aws configure' "
fi