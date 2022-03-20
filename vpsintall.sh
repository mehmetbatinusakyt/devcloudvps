apt-get update -y && apt-get upgrade -y
apt-get install wget -y
apt-get install unzip -y
wget -q -c -nc https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip -qq -n ngrok-stable-linux-amd64.zip
apt-get install openssh-server -y
useradd -m vps
adduser vps sudo
echo 'vps:Usakhosting1!' | chpasswd
sed -i 's//bin/sh//bin/bash/g' /etc/passwd
service ssh restart
mkdir -p /var/run/sshd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "LD_LIBRARY_PATH=/usr/lib64-nvidia" >> /root/.bashrc
echo "export LD_LIBRARY_PATH" >> /root/.bashrc
./ngrok authtoken 1lvbMEFO6r2uj8JDRnIoXrAxA20_87gxFUcUqyg2pPNFQ4u9s && ./ngrok tcp 22 --region=eu
