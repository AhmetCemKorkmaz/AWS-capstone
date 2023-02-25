#!/bin/bash -x
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/AhmetCemKorkmaz/capstone.git
cd /home/ubuntu/capstone
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/capstone/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80