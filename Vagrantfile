# -*- mode: ruby -*-
# vi: set ft=ruby :

# user configurable settings
require './settings'

Vagrant.configure("2") do |config|

	config.vm.box = VAGRANT_BOX
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", VM_MEMORY]
  end
  
  config.ssh.forward_agent = true
  
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true

  # use SYNCED_DIRS in `settings.rb' to mirror directories on the host system to
  #  the vm filesystem
  SYNCED_DIRS.each do |dir|
    config.vm.synced_folder dir.first, dir.last
  end

  # provision via chef_solo
  config.vm.provision :chef_solo do |chef|
   chef.add_recipe "erlang-dev"
    chef.json = {
      "erlang-dev" => {
        "user"  => GIT_USER,
        "email" => GIT_EMAIL,
        "locale" => LOCALE
      },
      "erlang" => {
        "source" => {
          "version" => ERLANG_RELEASE
        }
      }
    }
  end

end