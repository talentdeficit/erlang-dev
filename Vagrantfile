# -*- mode: ruby -*-
# vi: set ft=ruby :

# user configurable settings
require './settings'

Vagrant.configure("2") do |config|

  # use ubuntu precise pangolin 32 bit
	config.vm.box = "precise32"

  # use ssh_agent to forward keys so private keys for github etc don't need
  #   to be provisioned
  config.ssh.forward_agent = true
  
  # provision via chef_solo
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "prototype"
    chef.json = {
      "default" => {
        "user"  => GIT_USER,
        "email" => GIT_EMAIL
      }
    }
  end
end