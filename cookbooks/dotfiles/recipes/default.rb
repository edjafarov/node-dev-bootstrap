execute 'clone dotfiles' do
  user 'vagrant'
  group 'vagrant'
	command "git clone https://github.com/edjafarov/dotfiles.git /home/vagrant/dotfiles"
end

execute 'install dotfiles' do
  user 'vagrant'
  group 'vagrant'
	command "cd /home/vagrant/dotfiles && ./vagrantstrap.sh"
end


 