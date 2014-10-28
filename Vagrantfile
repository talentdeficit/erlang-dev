# -*- mode: ruby -*-
# vi: set ft=ruby :

# mostly used for git configuration
USER   = nil
EMAIL  = nil

# elixir will fail to work without an explicit locale
LOCALE = "en_US.utf8"

# override to install specific erlang or elixir versions from esl
ERLVSN = nil
EXVSN  = nil

# local directories to sync
SYNC = [["~", "/home/vagrant/synced"]]

Vagrant.configure("2") do |config|

  config.vm.box = "chef/ubuntu-14.04"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end
  
  config.ssh.forward_agent = true
  
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true

  SYNC.each do |dir|
    config.vm.synced_folder dir.first, dir.last
  end

  # provision via chef_solo
  config.vm.provision :chef_solo do |chef|
   chef.add_recipe "erlang-dev"
    chef.json = {
      "erlang-dev" => {
        "user"  => USER,
        "email" => EMAIL,
        "locale" => LOCALE,
        "erlvsn" => ERLVSN,
        "exvsn" => EXVSN
      }
    }
  end

end