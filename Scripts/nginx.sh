
apt update
apt install nginx -y

cat <<EOT > /etc/nginx/sites-available/vproapp
upstream vproapp {
  server 192.168.56.12:8080;
}

server {
  listen 80;

  location / {
    proxy_pass http://vproapp;
  }
}
EOT

rm -f /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/vproapp /etc/nginx/sites-enabled/vproapp

nginx -t
systemctl restart nginx
systemctl enable nginx
