# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Use vagrant if you don't have docker on your machine
#
# 0. Run once:
#   vagrant up --provision-with shell
#
# 1. Put your  coursera-dl arguments in line 34
#
# 3. Run:
#   vagrant provision --provision-with docker
#
#
# Files will be downloaded to the projects directory
#
#
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  # update box to be able to install docker
  config.vm.provision "shell", inline: "sudo apt-get update"

  config.vm.provision "docker" do |d|
    # Uncomment if you want build image from Dockerfile
    # d.build_image "/vagrant", args: "-t mshytikov/coursera-dl-docker"

    d.run "mshytikov/coursera-dl-docker",
      args:"-v /vagrant:/downloads",

      # Put your coursera-dl arguments here
      cmd: '-u YOUR_COURSERA_EMAIL -p PASSWORD hwswinterface-002'
  end
end
