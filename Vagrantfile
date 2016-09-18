Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-14.04"
  config.vm.hostname = "jira.home.net" 

  # Setup static ip address to be used with the Atlassian Suite of Application Servers
  config.vm.network "private_network", ip: "192.168.50.82"

  # Use an inline shell provisioner for basic setup 
  config.vm.provision 'shell', inline: shell, privileged: false

  # Run provisioning specific to setting up Java and Crowd 
  config.vm.provision "shell", path: 'provisioning/jira_provision.sh'

  # Support for Jira on port 8080
  config.vm.network "forwarded_port", guest: 8080, host: 8080, id: "jira"

  config.vm.provider 'virtualbox' do
    vb.memory = 1024
    vb.cpus   = 1
  end
end

def shell
  <<-eos
    echo Installing basic tools 
    sudo apt-get update
    sudo apt-get -y install vim git-core toilet
  eos
end
