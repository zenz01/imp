yum install epel-release && yum install 3proxy
systemctl start firewalld
firewall-cmd --zone=public --add-port=3128/tcp --permanent
firewall-cmd --reload
cd /etc/
wget --no-check-certificate -N https://raw.githubusercontent.com/zenz01/imp/master/3proxy.cfg
chmod 600 /etc/3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/zenz01/imp/master/.proxyauth
chmod 600 /etc/.proxyauth
systemctl enable 3proxy.service
systemctl enable firewalld.service
