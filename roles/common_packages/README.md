common_packages
========

Easy installation of packages accross multiple OS families. 

Requirements
------------

hash_behaviour in ansible.cfg must be set to ```merge```. common_packages depends on merging dictionaries
in order to override the state of each package. As well as any needed overrides of package names, and missing 
OS families.

Role Variables
--------------

common_packages:
  ssh:
    state: "default"
    Debian: ssh
    RedHat: ssh
  locate:
    state: "default"
    Debian: locate
    RedHat: mlocate
  git:
    state: "default"
    Debian: git
    RedHat: git
  facter:
    state: "default"
    Debian: facter
    RedHat: facter
  htop:
    state: "default"
    Debian: htop
    RedHat: false
  vim:
    state: "default"
    Debian: vim
    RedHat: vim
    
To manage the packages, just override the state in your vars file. Like:

common_packages:
  git:
    state: "installed"
    
Uses the states availible to the apt and yum modules.

Example Playbook
-------------------------


    - hosts: servers
      roles:
         - common_packages
      vars:
        common_packages:
          ssh:
            state: "latest"
          htop:
            state: "absent"

License
-------

MIT
