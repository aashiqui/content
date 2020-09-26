#/bin/bash
clear

rm -rf ubunut-proxy.conf
wget https://raw.githubusercontent.com/aashiqui/content/master/ubunut-proxy.conf
echo "Please provide your domain name without the www. (e.g. mydomain.com)"
read -p "Type your domain name, then press [ENTER] : " MY_DOMAIN
echo "Please provide a Proxy IP "
read -p "Type your IP, then press [ENTER] : " IP

echo "Provided Domain : $MY_DOMAIN and IP : $IP"


if [ -f /etc/redhat-release ]; then
  echo "Detected System is Centos"
  touch /etc/nginx/conf.d/${MY_DOMAIN}.conf
  sed "s/ip_name/$IP/g;s/host_name/$MY_DOMAIN/g;" ubunut-proxy.conf > /etc/nginx/conf.d/${MY_DOMAIN}.conf

  
fi

if [ -f /etc/lsb-release ]; then
    echo "Detected System is Ubuntu"
	 touch /etc/nginx/sites-available/${MY_DOMAIN}.conf
  sed "s/ip_name/$IP/g;s/host_name/$MY_DOMAIN/g;" ubunut-proxy.conf > /etc/nginx/sites-available/${MY_DOMAIN}.conf

fi
