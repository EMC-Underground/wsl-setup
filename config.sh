sudo apt update
sudo apt upgrade
sudo apt install python3-pip python3-dev libffi-dev libssl-dev
#from source
git clone https://github.com/daniel-chung-broadcom/ansible.git --recursive
cd ./ansible
source ./hacking/env-setup
sudo pip install -r ./requirements.txt
# add branch change below
