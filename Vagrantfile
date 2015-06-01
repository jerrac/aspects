Vagrant.configure("2") do |config|

  config.vm.define :ubuntu do |ubuntu|
    ubuntu.vm.box = "precise-server-cloudimg-amd64-vagrant-disk1"
    ubuntu.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
    ubuntu.vm.network :private_network, ip: "192.168.88.2"
    ubuntu.vm.network :forwarded_port, guest: 8140, host: 9140, auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 9292, host: 9292, auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 9300, host: 9302, auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 9200, host: 9201, auto_correct: true
    ubuntu.vm.network :forwarded_port, guest: 443, host: 24431, auto_correct: true
    ubuntu.vm.hostname = "vm.ubuntu.lab"
  end
  #config.vm.provider "virtualbox" do |ubuntu|
  #  ubuntu.customize ["modifyvm", :id, "--memory", "4096"]
  #end

  config.vm.define :centos do |centos|
    centos.vm.box = "centos-65-x86_64-virtualbox-nocm-0.2.0"
    centos.vm.box_url = "https://s3.amazonaws.com/puppetlabs-vagrantcloud/centos-65-x86_64-virtualbox-nocm-0.2.0.box"
    #centos.vm.box = "CentOS-6.5-x86_64-v20140110"
    #centos.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box"
    centos.vm.network :private_network, ip: "192.168.88.3"
    centos.vm.network :forwarded_port, guest: 8140, host: 9141, auto_correct: true
    centos.vm.network :forwarded_port, guest: 8080, host: 8888, auto_correct: true
    centos.vm.network :forwarded_port, guest: 9292, host: 9293, auto_correct: true
    centos.vm.network :forwarded_port, guest: 9300, host: 9303, auto_correct: true
    centos.vm.network :forwarded_port, guest: 9200, host: 9202, auto_correct: true
    centos.vm.network :forwarded_port, guest: 443, host: 24432, auto_correct: true
    centos.vm.network :forwarded_port, guest: 80, host: 24342, auto_correct: true
    centos.vm.hostname = "vm.centos.lab"
  end


  config.vm.define :sles do |sles|
    sles.vm.box = "sles-11sp1-x64-vbox4210-nocm"
    sles.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/sles-11sp1-x64-vbox4210-nocm.box"
    sles.vm.network :private_network, ip: "192.168.88.4"
    #sles.vm.network :forwarded_port, guest: 22, host: 20024
    sles.vm.hostname = "vm.sles.lab"
  end

  config.vm.define :oracle59 do |oracle59|
    oracle59.vm.box = "oracle59"
    oracle59.vm.box_url = "https://dl.dropbox.com/s/n5o3gfdgjc3ekhl/oracle59.box"
    oracle59.vm.network :private_network, ip: "192.168.88.5"
    oracle59.vm.network :forwarded_port, guest: 22, host: 20025
    oracle59.vm.hostname = "vm.oracle59.lab"
  end

  config.vm.define :ubuntutrusty do |ubuntutrusty|
    ubuntutrusty.vm.box = "trusty-server-cloudimg-amd64-vagrant-disk1"
    ubuntutrusty.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    ubuntutrusty.vm.network :private_network, ip: "192.168.88.6"
    ubuntutrusty.vm.network :forwarded_port, guest: 8140, host: 9141, auto_correct: true
    ubuntutrusty.vm.network :forwarded_port, guest: 8080, host: 8888, auto_correct: true
    ubuntutrusty.vm.network :forwarded_port, guest: 8443, host: 8889, auto_correct: true
    ubuntutrusty.vm.network :forwarded_port, guest: 7143, host: 7143, auto_correct: true
    ubuntutrusty.vm.network :forwarded_port, guest: 7071, host: 7071, auto_correct: true
    ubuntutrusty.vm.network :forwarded_port, guest: 7993, host: 7993, auto_correct: true
    ubuntutrusty.vm.network :forwarded_port, guest: 7110, host: 7110, auto_correct: true
    ubuntutrusty.vm.network :forwarded_port, guest: 7995, host: 7995, auto_correct: true
    ubuntutrusty.vm.network :forwarded_port, guest: 443, host: 24432, auto_correct: true
    ubuntutrusty.vm.network :forwarded_port, guest: 80, host: 24342, auto_correct: true
    ubuntutrusty.vm.hostname = "vm.ubuntutrusty.lab"
  end
  config.vm.provider "virtualbox" do |ubuntutrusty|
    ubuntutrusty.customize ["modifyvm", :id, "--memory", "4096"]
  end

  #http://puppet-vagrant-boxes.puppetlabs.com/debian-73-x64-virtualbox-nocm.box
  config.vm.define :wheezy do |wheezy|
    wheezy.vm.box = "debian-73-x64-virtualbox-nocm"
    wheezy.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/debian-73-x64-virtualbox-nocm.box"
    wheezy.vm.network :private_network, ip: "192.168.88.7"
    wheezy.vm.network :forwarded_port, guest: 8140, host: 9147
    wheezy.vm.network :forwarded_port, guest: 443, host: 24437
    #wheezy.vm.network :forwarded_port, guest: 22, host: 20027
    wheezy.vm.hostname = "vm.wheezy.lab"
  end

end

