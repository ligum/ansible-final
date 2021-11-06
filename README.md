![image](https://bootcamp.rhinops.io/images/ansible.gif)
## Ansible Project

# Introduction
We created a Terraform template that automates the process of provisioning our infrastructure in the Cloud. and now we are going to add Ansible to our toolbox in order to automate the whole configuration of the servers and deploy our NodeWeightTracker application using Configuration Management practices.

# Project Overview
We are going to write an Ansible playbook(s) to configure the servers created by terraform and then, install the NodeWeightTracker application (including all its dependencies). In addition, after everything we did so far we are ready to move to production. To achieve this we will need to provision 2 identical environments, one for staging and another for production.
![imaage](https://bootcamp.rhinops.io/images/ansible-diagram.png)
# Environments
![image text](https://bootcamp.rhinops.io/images/week-6-envs.png)
# Goals
Use Terraform to provision the infrastructure
Use Ansible to deploy the NodeWeightTracker application
Create two environments: Staging and Production
Both environments must be identical except for the size of the vms (production ones must be larger)
In this project using a Managed Postgresql is required (previously Bonus “B”)

# Considerations
Ansible Playbooks should be stored in a repository
Ansible uses Yaml files for its playbooks which is a widely used markup language and you should start get used to it’s strict syntax.
This project should be quite easier than previous projects, so take advantage of the remaining time to polish and improve your work so far.
Make sure that all your code is clean and organized
This week has a single bonus that can be very complex (it’s not worth trying to do it before having finished the base project and having corrected the feedback received so far
)
# Expected Result
Two environments provisioned by Terraform
The Weight Tracker Application deployed using Ansible

# Bonus
Create a third environment called “POC” in which you must use Windows servers and deploy the application using Ansible

# How to install an Ansible 

https://gitlab.com/ansible-workshop/labs

Installing Ansible on Ubuntu

To configure the PPA on your machine and install Ansible run these commands:

$ sudo apt update

$ sudo apt install software-properties-common

$ sudo add-apt-repository --yes --update ppa:ansible/ansible

$ sudo apt install ansible

Step 2 — Setting Up the Inventory File
The inventory file contains information about the hosts you’ll manage with Ansible. You can include anywhere from one to several hundred servers in your inventory file, and hosts can be organized into groups and subgroups. The inventory file is also often used to set variables that will be valid only for specific hosts or groups, in order to be used within playbooks and templates. Some variables can also affect the way a playbook is run, like the ansible_python_interpreter variable that we’ll see in a moment.
To edit the contents of your default Ansible inventory, open the /etc/ansible/hosts file using your text editor of choice, on your Ansible control node:

sudo nano /etc/ansible/hosts

Whenever you want to check your inventory, you can run:

ansible-inventory --list -y

Step 3 — Testing Connection

ansible all -m ping -u <yourusername>


This command will use Ansible’s built-in ping module to run a connectivity test on all nodes from your default inventory, connecting as root. The ping module will test:

•	if hosts are accessible;
•	if you have valid SSH credentials;
•	if hosts are able to run Ansible modules using Python.

You should get output similar to this:

Output
server1 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
server2 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
server3 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}



Generate SSH keys

Generate ssh key

$ ssh-keygen

Copy the key to a desired machine

$ ssh-copy-id -i ~/.ssh/id_rsa.pub user@host

This logs into the server host, and copies keys to the server, and configures them to grant access by adding them to the authorized_keys file. The copying may ask for a password or other authentication for the server.
Only the public key is copied to the server. The private key should never be copied to another machine.

Test the new key

Once the key has been copied, it is best to test it:

ssh -i ~/.ssh/mykey user@host

The login should now complete without asking for a password. Note, however, that the command might ask for the passphrase you specified for the key
    
We will use 3 previous steps for doing this project :
    
App : https://github.com/ligum/node-weight-tracker-week3
    
Azure : https://github.com/ligum/azure-cloud-week4
    
Terraform : https://github.com/ligum/terraform-week5
    
