#!/bin/sh

#sudo crontab cronjob_deploy

echo "root cron job is running..."

# in case that container already running
sudo docker compose -f /var/www/deploy/docker-compose.yml down


#sudo mkdir -p  /var/www/

sudo rm -rf /var/www/deploy

sudo cp /home/ubuntu/agent/work/db5eb7314bcd7c73/ /var/www/deploy


sudo docker compose -f /var/www/deploy/docker-compose.yml up -d

sudo crontab -r