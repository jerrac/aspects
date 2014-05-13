# Aspects

## What is this?
Aspects aims to provide a set of Ansible roles that will allow you to build a server with a minimal amount of work.

You should be familiar with the official Ansible documentation at http://docs.ansible.com/ prior to using Aspects.

Note: with the release of https://galaxy.ansible.com/ how this project works needs some refinement. 

## Roles
Name | Status | Supported OS's | Notes
-----|--------|----------------|------
Apache2 | Testing |<ul><li>Ubuntu 12.04</li><li>CentOS 6.5</li></ul>| Currently only Apache 2.2. Apache 2.4 will get its own role.
PHP | Testing |<ul><li>Ubuntu 12.04</li><li>CentOS 6.5</li></ul>| Currently testing PHP 5.3. Older versions will not be supported. Newer versions should work, but there may be issues.
mysql-client | Dev |<ul><li>Ubuntu 12.04</li></ul>| Don't Use
mysql-server | Dev |<ul><li>Ubuntu 12.04</li></ul>| Don't Use
ntp_client | Dev |<ul><li>Ubuntu 12.04</li></ul>| Don't Use
owncloud | Dev |<ul><li>Ubuntu 12.04</li></ul>| Don't Use
tinytinyrss | Dev |<ul><li>Ubuntu 12.04</li></ul>| Don't Use
ufw | Dev |<ul><li>Ubuntu 12.04</li></ul>| Don't Use

## Setup
* Set ```hash_behaviour=merge``` in your ansible.cfg file. You can copy the default that comes with Aspects, or set in whatever default configureation file you choose to use. See the official documentation on where to find them, and what other options you can use.
* Rename the hosts-default file to hosts (hosts is in .gitignore)
** Modify the hosts file as appropriate. Add your hosts to each role that it should use.
* Create appropriate group_vars and host_vars files according to your server needs.
* Rename site.yml-default to site.yml. This is the file you will run with ansible-playbook.

## Running
### Run everything
```ansible-playbook -i <your host file> --ask-sudo-pass --sudo site.yml```
### Run everything on a single host
```ansible-playbook -i <your host file> --ask-sudo-pass --sudo --limit="<hostname from hosts file>" site.yml```
### Run a specific role on everything
```ansible-playbook -i <your host file> --ask-sudo-pass --sudo --tags="<role name>" site.yml```
### Run a specific role on a specific host
```ansible-playbook -i <your host file> --ask-sudo-pass --sudo --tags="<role name>" --limit="<hostname from hosts file>" site.yml```
### Other options
See Ansible's official documentation.
  


