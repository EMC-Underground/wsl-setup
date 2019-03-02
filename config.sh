sudo apt update
sudo apt upgrade
sudo apt install python-pip python-dev libffi-dev libssl-dev
#from source
git clone https://github.com/daniel-chung-broadcom/ansible.git --recursive
cd ./ansible
source ./hacking/env-setup
sudo pip install -r ./requirements.txt
# add branch change below
# change to the brocade-bsn branch to use brocade dev code
git checkout brocade_bsn
# check the current branch
git branch
