Vagrant::Config.run do |config|
  config.vm.box = "precise64"

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :hostonly, "192.168.33.10"

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port 80, 8080

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe 'apt'
    chef.add_recipe 'apache2'
    chef.add_recipe 'rvm'
  end

  config.vm.share_folder "v-root", "/vagrant", ".", :nfs => true
end
