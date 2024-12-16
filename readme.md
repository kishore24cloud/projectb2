web test


sudo apt update -y
sudo apt install apache2 -y
sudo a2enmod proxy_http
systemctl restart apache2
vim /etc/apache2/sites-available/000-default.conf
        ProxyPass / http://localhost:3001/
        ProxyPassReverse / http://localhost:3001/
