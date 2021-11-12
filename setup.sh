sudo apt update
sudo apt install nginx

sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt -y install nodejs

sudo apt install certbot python3-certbot-nginx

cd /etc/nginx/sites-available/
# echo "PUT THE BELOW INFO IN THAT FILE (copy this and paste)"

echo "server {" >> default
echo     "     " >> default
echo "   server_name $1;" >> default
echo   "     "  >> default
echo "  location / {"
echo "    proxy_pass http://localhost:3000; # Change the port if needed." >> default
echo "    proxy_http_version 1.1;" >> default
echo "    proxy_set_header Upgrade \$http_upgrade;" >> default
echo "    proxy_set_header Connection 'upgrade';" >> default
echo "   proxy_set_header Host \$host;" >> default
echo "   proxy_cache_bypass \$http_upgrade;" >> default
echo "   proxy_set_header X-Real-IP \$remote_addr;" >> default
echo "  }" >> default
echo " }" >> default


# Script Continued

sudo systemctl restart nginx

 sudo add-apt-repository ppa:certbot/certbot
 sudo apt install python-certbot-nginx
 sudo certbot --nginx -d $1 
 echo "When instructed you want to pick the second option (2) to redirect all traffic to a https connection."
 sudo certbot renew --dry-run
 npm install
