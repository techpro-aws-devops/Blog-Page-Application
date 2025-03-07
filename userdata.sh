#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
git clone https://github.com/techpro-aws-devops/Blog-Page-Application.git
cd /home/ubuntu/Blog-Page-Application/BlogDjango
apt install python3-pip -y
apt-get install python3.8-dev default-libmysqlclient-dev -y
apt-get install libjpeg-dev zlib1g-dev -y -qq
pip3 install -r requirements.txt
cd /home/ubuntu/Blog-Page-Application/BlogDjango/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
