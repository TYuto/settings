yum update -y
yum install -y fontawesome-fonts
yum install -y powerline-fonts
yum install -y i3
yum install -y vim
yum install -y feh
yum install -y ibus-mozc
yum install -y dolphin
yum install -y fish
git clone https://github.com/TYuto/settings
mkdir /home/yuto/.vim/dein
mkdir /home/yuto.config/i3
mkdir /homr/yuto/config/i3blocks
curl -L https://get.oh-my.fish | fish
echo "yuto ALL=(ALL) ALL" >> /etc/sudoers
yum install terminator
yum install util-linux-user
yum install -y screenfetch
yum install -y gcc
sudo dnf copr enable mrbloups/compton
dnf install compton
yum install htop

