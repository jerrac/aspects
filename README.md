# Aspects

## What is this?
Aspects is a test and example project for the various aspects_ roles.

A set of vagrant vm's is configured with example configuration.

You should be familiar with the official Ansible documentation at http://docs.ansible.com/ prior to using Aspects.

## Roles
Aspects expects all aspects_ roles to live in a configured role_path location. The default is /etc/ansible/roles.

Make sure you clone all needed roles to that path.

To find the roles, search for "aspects_" on the following organization and user accounts:

* https://github.com/jerrac
* https://github.com/LaneCommunityCollege

## Setup
* Install Ansible. http://docs.ansible.com/
** I usually run from a recent checkout of the devel branch. So far it has had few issues.
* Install vagrant. http://www.vagrantup.com/
* Install VirtualBox. https://www.virtualbox.org/ 
** Most features should work with other vm providers, but virtualbox is what I use, so compatibility is not guaranteed.
* Configure ansible.cfg.
** I suggest using https://github.com/ansible/ansible/blob/devel/examples/ansible.cfg as the base.
** Set ```hash_behaviour=merge```.
** Make sure it is set to search the location where you cloned the aspects_ roles.
* Add the lines from the etc-hosts-dist file to your /etc/hosts file, or whereever your systems hosts file lives.

## Basic Architechture

Aspects has several vm's configured:

* vm.ubuntu.lab (192.168.88.2) running Ubuntu 12.04.
* vm.centos.lab (192.168.88.3) running CentOS 6.5.
* vm.sles.lab (192.168.88.4) running SLES 11 SP1.
* vm.oracle59.lab (192.168.88.5) running Oracle 5.9.
* vm.ubuntutrusty.lab (192.168.88.6) running Ubuntu 14.04.
* vm.wheezy.lab (192.168.88.7) running Debian Wheezy.

See the various group_vars and host_vars files for detailed examples.

# Ansible Vault
ansible-vault is a handy tool that lets you encrypt variable files. This is especially handy for avoiding having to enter your sudo password all the time.

For demonstration purposes, I have created the group_vars/all/local.user to tell ansible what user to run as. The file is encrypted with the password ```password```.

I also have stored that password in .vaultpassword.txt.

To view it, just run:

    ansible-vault --vault-password-file .vaultpassword.txt view group_vars/all/local.user

To edit, replace ```view``` with ```edit```. See ansible docs for more detailed information.

Remember that all vault encrypted files must be encrypted with the same password if they are to be used together.

## Running
### Run everything
```ansible-playbook -i aspects.hosts.ini --ansible-vault-file .vaultpassword.txt aspects.play.all.yml```
### Run everything on a single host
```ansible-playbook -i aspects.hosts.ini --ansible-vault-file .vaultpassword.txt --limit="<hostname from hosts file>" aspects.play.all.yml```
### Run a specific role on everything
```ansible-playbook -i aspects.hosts.ini --ansible-vault-file .vaultpassword.txt --tags="<role name>" aspects.play.all.yml```
### Run a specific role on a specific host
```ansible-playbook -i aspects.hosts.ini --ansible-vault-file .vaultpassword.txt --tags="<role name>" --limit="<hostname from hosts file>" aspects.play.all.yml```
### Other options
See Ansible's official documentation.
  


