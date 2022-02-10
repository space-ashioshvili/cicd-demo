#!/bin/bash
#EC2_INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
#EC2_AZ=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
EC2_INSTANCE_ID=$(hostname)
sed -i "s/was deployed/was deployed on $EC2_INSTANCE_ID/g" /var/www/html/index.html
chmod 664 /var/www/html/index.html
