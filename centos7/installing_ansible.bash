#!/usr/bin/env bash

# # make sure we get the extra enterprise linux repositories
# yum -y install epel-release
# yum repolist
#
# # lib ffi needs gnu compilers
# yum install -y gcc
# yum install -y libffi-devel
# yum install -y libssl-devel
#
# # install pip and virtualenv
# yum -y install python-pip
# sudo yum install -y python-devel
# sudo pip install --upgrade pip
# sudo pip install virtualenv
# sudo pip install virtualenvwrapper
#
# # setup a virtualenv for Ansible
# export WORKON_HOME=~/virtual_envs
# mkdir -p $WORKON_HOME
# source virtualenvwrapper.sh
# mkvirtualenv ansible
# workon ansible
# pip install ansible


# try again via conda
sudo yum install -y wget
sudo yum install -y git
mkdir conda_dl
cd conda_dl/
wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
sudo sh Miniconda-latest-Linux-x86_64.sh -b -p /usr/local/miniconda
cd ..
rm -rf conda_dl
export PATH=/usr/local/miniconda/bin:$PATH
conda create -y -n use_ansible python=2.7
source activate use_ansible
conda install -n use_ansible -c kbroughton ansible

## set up a pub/priv key pair and ssh-copy to worker
##   e.g. http://www.cyberciti.biz/faq/how-to-set-up-ssh-keys-on-linux-unix/

## get this file from repo
# mkdir deploying
#  git clone https://github.com/lbillingham/ansible_and_vagrant.git ./deploying
# cd deploying/deploy_tools

## actually run the commands on the worker node
#   ansible-playbook -i inventory.ansible provision.ansible.yaml
