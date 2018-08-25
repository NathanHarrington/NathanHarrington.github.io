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

## Wordpress on Fedora on AWS

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
dnf install w3m vim
reboot

Open port 80 firewall rules on amazon ec2 dashboard:
security groups-> Find most recent launch wizard (sort by group name)
    Edit inbound rules
    add inbound port 80, accept all defaults
    add inbound port 6787, accept all defaults

firewall-cmd --zone=public --add-port=80/tcp --permanent
firewall-cmd --zone=public --add-port=6787/tcp --permanent

Edit /etc/ssh/sshd_config
move port 22 to 6787


dnf install @"Web Server" wordpress php-mysqlnd mariadb-server
systemctl enable httpd.service mariadb.service
systemctl start httpd.service mariadb.service


sudo mysqladmin -u root password
new root password: enter_strong-root_password

sudo mysqladmin create mywpsite -u root -p

sudo mysql -D mysql -u root -p

GRANT ALL PRIVILEGES ON mywpsite.* TO 'sqluser'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
QUIT:

sudo setsebool -P httpd_can_network_connect_db=1
sudo setsebool -P httpd_can_sendmail=1
</pre>

<pre>
/etc/httpd/conf.d/wordpress.conf. 

Change the line: 
# Require local
# To:
# Require all granted


<pre>
Edit the /etc/wordpress/wp-config.php file.

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'mywpsite');

/** MySQL database username */
define('DB_USER', 'sqluser');

/** MySQL database password */
define('DB_PASSWORD', 'password');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Add the line to increase memory limit for Elementor */
define( 'WP_MEMORY_LIMIT', '64M' );
</pre>



<pre>
Add elementor:

vi /etc/selinux/config
change 'enforcing' to 'permissive'

sudo systemctl restart httpd

cd ~

wget https://downloads.wordpress.org/plugin/elementor.2.1.8.zip

cd /usr/share/wordpress/wp-content/plugins

sudo unzip ~/elementor*.zip

Elementor -> Settings -> Tools
    Click Sync Library, save settings


systemctl enable httpd

</pre>
