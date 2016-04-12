firewall-cmd --permanent --zone=public --add-port=27017/tcp
firewall-cmd --permanent --zone=public --add-port=27018/tcp
firewall-cmd --permanent --zone=public --add-port=27019/tcp
firewall-cmd --reload
