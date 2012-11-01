Vagrant::Config.run do |config|
  config.vm.box = "base"
  config.ssh.forward_agent = true
  config.vm.forward_port 3000, 3000
  config.vm.forward_port 8080, 8080

  config.vm.share_folder "app", "/home/vagrant/app", "app"

  # allow for symlinks in the app folder
  config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/app", "1"]

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "chef-hosts"
#    chef.add_recipe "chef-mongodb"
#    chef.add_recipe "nodejs-cookbook"
#    chef.add_recipe "git"
#    chef.add_recipe "vim"
#    chef.add_recipe "phantomjs"
#    chef.add_recipe "imagemagick"
    chef.json = {
      "nodejs" => {
        "version" => "0.8.12",
        "install_method" => "source",
        "npm" => "1.1.62"
      },
      "host_aliases" => [{
        "name" => "server08",
        "ip" => "12.12.12.12"
      }]
    }
  end
end
