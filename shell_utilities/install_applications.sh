echo 'Welcome to the automatic package installer'

echo 'Adding apt-keys'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

echo 'Adding repositories'
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

echo 'Updating repositories'
sudo apt-get update

echo ' '
echo 'Installing basic Packages'
sudo apt-get install -y sublime-text-installer git git-flow  pep8 pep257 ipython npm skype pstack sshfs linux-tools-generic linux-tools-common linux-cloud-tools-generic


echo 'Installing networking utilities'
sudo apt-get install python-pip vlc make vim traceroute nmap openssh-server qemu-kvm virt-manager

echo 'Installing compression utilities'
sudo apt-get install p7zip-full

echo 'Installing languages'

echo ' '
echo 'Installing pip packages'
sudo pip install Jinja2 prettytable virtualenv

echo ' '
echo 'Installing system tools'
sudo apt-get install iotop htop meld tree vagrant -y

echo ''
echo 'Creating alias'
alias l="ls -ltr"
alias c="clear"
alias h="cd ~"
alias v="cd /home/dk/Documents/virtual_machines"
alias g="cd /home/dk/Documents/git"
alias virdir="cd /home/dk/Documents/virtual_machines"
alias gitdir="cd /home/dk/Documents/git"

vagrant plugin install vagrant-vbguest
vagrant plugin install 