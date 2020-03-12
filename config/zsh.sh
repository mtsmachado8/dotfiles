# zsh
sudo apt install zsh

# oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# zplugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# change default shell
chsh -s $(which zsh)
sudo chsh -s $(which zsh)