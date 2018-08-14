Title: Amazon Free Tier SSH etc.
Date:  2018-02-09
Category: articles
Tags: system administration

Free Tier amazon instances are a game changer. Here's how to set the
windows micro instances to function as an ssh server for easier transfer
of files.

Tested using:
Microsoft Windows Server 2016 Base - ami-fe446c9b t2-micro

Fedora Core 26 client (rdesktop)

<pre>
Using the Amazon EC2 web interface:

Create a key-pair name: amazon_key_pair.pem
Download the keypair file.
Create notifications to email when usage exceed free tier. This in
practice should never happen, but it feels good.

After instance launches, click connect.
Click Get password.
</pre>

Then start the remote desktop session with a command like:
```
rdesktop long_hostname.us-east-2.compute.amazonaws.com -u \
    Administrator -p 'password' -g 1920x1000
```

<pre>
Directly on the Windows Server virtual machine:

CRITICAL!
Seriously consider turning off all windows defender options immediately.
These can effectively make the system unusable. Alternatively, let them
run and plan to use the server a day later once it has stabilized.
CRITICAL!

Start internet explorer, install Google Chrome
Add all google domains (including ad trackers) that appear during the
process to the whitelist.

Install ublock origin from google chrome
Change timezone and time if necessary

Restart system


The details steps below for ssh server installation are based heavily
on the article on
[LifeHacker](https://lifehacker.com/205090/geek-to-live--set-up-a-personal-home-ssh-server)


Go to cygwin.com
    Download and run setup-x86_64.exe
    Accept default until mirror selection.
    Select clarkson.edu as mirror
    search for openssh in Net group, install

Launch a cygwin command line window

Execute command: ssh-host-config

Strictmodes? Yes
New local account sshd? Yes
Install sshd as a service? Yes
Enter the value of CYGWIN for the daemon: ntsec tty
Do you want to use a different name? No
Create a new priviledged account? Yes
Set password: type in 8 character password with number and capital

After setup is complete, change the ssh server port to 6787
Edit the file: /c/cygwin64/etc/sshd_config
Change:
#Port 22
to
Port 6787

Then in a cygwin window, issue: net start sshd

Then add the firewall port 6787 inbound rule to open.
    Firewall -> Advanced settings
    Inbound rules -> New Rule -> Port
    Port 6787, name Cygwin SSH

Then change the amazon instance network rules to open port 6787
    EC2 Dashboard -> Network and security -> Security Groups
        (Find most recent launch wizard, select)
        Actions -> Edit inbound rules
        Add rule for inbound port 6787

        Actions -> Edit inbound rules

        Delete rule for inbound port 3389
</pre>


From the Linux client machine:

```
# Create the ssh folder on the windows system
ssh Administrator@long_hostname.aws.com "mkdir ~/.ssh"

# Append the linux public key file to the remote list of authorized
# keys
cat ~/.ssh/id_rsa.pub | ssh Administrator@ec2_hostname \
    "cat >> ~/.ssh/authorized_keys"

```

You can now ssh in with the command below, and tunnel the remote desktop
connections over ssh:

```
autossh \
    -M 40001 \
    -i ~/ssh/id_rsa \
    -L 9833:localhost:3390 \
    -R 6703:localhost:22 \
    Administrator@ec2_hostname
```

Then on the windows computer, open a cygwin command prompt and verify
the tunnel back to the host linux machine with:
```
    ssh -o port=6703 localhost
```

