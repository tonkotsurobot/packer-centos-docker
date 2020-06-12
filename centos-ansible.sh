yum -y update
yum install -y openssh-server
yum install -y ansible
yum install -y wget
useradd -m emario && usermod -aG wheel emario
echo -e "changeme\nchangeme" | passwd emario
mkdir -p /home/emario/.ssh && chmod 700 /home/emario && chown -R emario:emario /home/emario
mkdir /tmp/ssh
wget -P /tmp/ssh http://192.168.1.30:8000/authorized_keys
wget -P /tmp/ssh http://192.168.1.30:8000/config/config
wget -P /tmp/ssh http://192.168.1.30:8000/key/emario_private
mv /tmp/ssh/* /home/emario/.ssh && chmod -R 700 /home/emario/.ssh && chown -R emario:emario /home/emario/.ssh
mv /tmp/sshd_config /etc/ssh/sshd_config && chmod 644 /etc/ssh/sshd_config && chown -R root:root /etc/ssh/sshd_config
service sshd start
