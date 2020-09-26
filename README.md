Complete automatic installation (Will still prompt for domain and ip)
curl -X PURGE https://raw.githubusercontent.com/aashiqui/content/master/proxy.sh
wget https://raw.githubusercontent.com/aashiqui/content/master/proxy.sh

sudo chmod +x proxy.sh

sudo ./proxy.sh
