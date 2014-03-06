# Aspects

## What is this?
Aspects aims to provide a set of Ansible roles that will allow you to build a server by only editing the variable files.

You should be familiar with the official Ansible documentation at http://docs.ansible.com/ prior to using Aspects.

## Roles
Name | Status | Supported OS's | Notes
-----|--------|----------------|------
Apache2 | Testing |* Ubuntu 12.04 * CentOS 6.5 | Currently only Apache 2.2. Apache 2.4 will get its own role.
PHP | Testing |* Ubuntu 12.04 * CentOS 6.5 | Currently testing PHP 5.3. Older versions will not be supported. Newer versions should work, but there may be issues.

## Setup
* Set ```hash_behaviour=merge``` in your ansible.cfg file. You can copy the default that comes with Aspects, or set in whatever default configureation file you choose to use. See the official documentation on where to find them, and what other options you can use.
* Create appropriate hosts files. See Ansible's documentation for best practices.
* Create appropriate group_vars and host_vars files according to your server needs.
* Create appropriate site.yml file. See ```site.yml-default`` for a quick example.

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
  


