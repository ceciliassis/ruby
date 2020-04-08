# Nginx configuration

```bash
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    server_name <IP-server>;
    location / {
       proxy_pass http://localhost:8000;
   }
}
server {
    listen 443 default_server;
    listen [::]:443 default_server;
    server_name <IP-server>;
    location / {
       proxy_pass http://localhost:8000;
   }
}
```


# Comands
```bash
sudo apt install nginx
sudo ufw enable 
nginx -v
sudo ufw allow 'Nginx Full'
sudo ufw allow 22/tcp
sudo ufw app list
sudo ufw status
sudo systemctl status nginx
sudo nano /etc/nginx/sites-available/headline_generation_api
sudo ln -s /etc/nginx/sites-available/<api> /etc/nginx/sites-enabled/<api>
sudo mv /etc/nginx/sites-enabled/default /home/ubuntu/default
sudo systemctl restart nginx
sudo systemctl status nginx.service
```
