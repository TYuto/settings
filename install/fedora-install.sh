sudo yum update -y
sudo yum install -y fontawesome-fonts
sudo yum install -y powerline-fonts
sudo yum install -y i3
sudo yum install -y vim
sudo yum install -y feh
sudo yum install -y ibus-mozc
sudo yum install -y dolphin
sudo yum install -y fish
mkdir /home/yuto/.vim/dein
mkdir /home/yuto/.config/i3
curl -L https://get.oh-my.fish | fish
echo "yuto ALL=(ALL) ALL" >> /etc/sudoers
sudo yum install terminator
sudo yum install util-linux-user
sudo yum install -y screenfetch
sudo yum install -y gcc
sudo dnf copr enable mrbloups/compton
sudo dnf install compton
sudo yum install htop

dnf install dbus-devle #for i3status-rs
