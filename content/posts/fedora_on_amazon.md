Title: Fedora Workstation on Amazon EC2
Date:  2018-05-30
Category: articles
Tags: system administration

Creation of a high-memory, low disk instance with a full Fedora
Workstation desktop experience. Designed for a low-cost, next level up
replacement of a powerful desktop. An order of magnitude below big data,
and an order of magnitude more capable than a 2013 era laptop.

Or skip to the bottom for just the Wordpress on a free tier micro
instance instructions.

Launch a Fedora 28 Cloud Base Images for [Amazon Public
Cloud](https://alt.fedoraproject.org/cloud/).

Connect to the instance with:
<pre>
ssh \
    -i your_key_pair.pem \
    -L 4010:localhost:4000 \
    -R 6622:localhost:22 \
    fedora@amazon-ec2-public-dnsname
</pre>

<pre>
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    
dnf update -y
dnf group install "GNOME Desktop Environment"
dnf install w3m
reboot

After reboot, install nomachine:

    w3m 'https://www.nomachine.com/download/linux&id=1'
    (Download the 'plain' linux nomachine)

    dnf install ./nomachine*

    If you get a message about an selinux failure with systemd read from
    nxserver.service as describe here: https://www.nomachine.com/TR11N07360

    vi /etc/selinux/config

    change 'enforcing' to 'permissive'

    reinstall nomachine

    #  Change the fedora password so nomachine clients can login
    sudo su - 
    passwd fedora
    exit

    # Connect to the nomachine instance through the tunnel on port 4010
    # If nomachine says no desktop created, check the box for "Always
    # create"

    # On first connect, you may have to change the nomachine resolution to
    # 1920x1080. Don't change it in the client, change it in the nomachine
    # settings.

</pre>

You should now have a full Fedora Workstation in the cloud that will
start a new desktop session with Gnome automatically on nomachine
connection. Use the script below to establish a tunnel over port 4010 to
nomachine, and ssh back to the local system.

From this stage, follow the standard
[dotfiles](https://github.com/NathanHarrigton/dotfiles) configuration.

```
#!/bin/bash
# Launch the instance, get the new ip address, establish an autossh
# tunnel to the AMI
# Use aws cli or the web interface to get your machines' instance id,
# replace the variable below:

INSTANCEID=i-GUID
export PATH=/home/nharrington/miniconda3/bin:$PATH
source activate conda_awscli

aws ec2 start-instances \
    --instance-ids $INSTANCEID \
    --output=text

QRY="Reservations[*].Instances[*].[InstanceId,PublicDnsName,Tags\
[?Key==\`Application\`].Value]"

DNSNAME=`aws ec2 describe-instances \
                --instance-ids=$INSTANCEID \
                --query $QRY \
                --output=text \
                | awk '{print $2}'`

echo $DNSNAME

autossh \
    -M 36622 \
    -oStrictHostKeyChecking=no \
    -i lls_key_pair.pem \
    -L 8839:localhost:5901 \
    -L 4010:localhost:4000 \
    -R 6622:localhost:22 \
    fedora@$DNSNAME
```

Looking for wordpress on amazon? Just use [bitnami
image](https://aws.amazon.com/marketplace/pp/B00NN8Y43U?qid=1535236710075&sr=0-1&ref_=srh_res_product_title), then add the
elementor plugin:


