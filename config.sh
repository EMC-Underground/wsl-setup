# Configure the distro to be a better dev environment
bash -c "$(curl -fsSL https://raw.githubusercontent.com/jldeen/dotfiles/wsl/configure.sh)"

# add the ansbile PPA and install the most recent version

sudo add-apt-repository -y ppa:ansible/ansible

sudo apt update
sudo apt upgrade
sudo apt install -y ansible python-pip

# for Kali Linux
#sudo apt install git
# end for kali linux


# install ansible from source to use developement branches
# This is for the brocade branch to test brocade modules

#git clone https://github.com/daniel-chung-broadcom/ansible.git --recursive
#cd ./ansible
#source ./hacking/env-setup
#sudo pip install -r ./requirements.txt

# add branch change below
# change to the brocade-bsn branch to use brocade dev code

#git checkout broadcom_bsn

# check the current branch

#git branch

# Commands to add DellEMC Ansible for powermax

pip install PyU4V #installs the python sdk for powermax
mkdir -p ~/code/ansible-powermax
cd ~/code
git clone https://github.com/dell/ansible-powermax.git
sudo cp ~/code/ansible-powermax/dellemc_ansible/utils/dellemc_ansible_utils.py /usr/lib/python2.7/dist-packages/ansible/module_utils
sudo cp ~/code/ansible-powermax/dellemc_ansible/powermax/library/* /usr/lib/python2.7/dist-packages/ansible/modules/storage/dellemc/

#should be good to go to run the playbooks now
