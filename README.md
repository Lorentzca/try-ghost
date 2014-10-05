## vm

vagrant up

    $ vagrant up

add .ssh/config

    Host ghost-vm.me
      HostName 192.168.92.12
      User vagrant
      UserKnownHostsFile /dev/null
      StrictHostKeyChecking no
      PasswordAuthentication no
      IdentityFile ~/.vagrant.d/insecure_private_key
      IdentitiesOnly yes
      LogLevel FATAL

provision

    $ ansible-playbook -i hosts main-vm.yml

add /etc/hosts

    192.168.92.12 ghost-vm.me

access <http://ghost-vm.me/ghost/signup/>

dashboard <http://ghost-vm.me/ghost>

## production
