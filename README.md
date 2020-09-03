First install Manjaro-i3 edition

Run "sudo pacman -Syyu" and also update using the Package Manager program

Install urxvt, rofi, vlc, pcmanfm, vim, unzip, fontconfig, moc, ranger,
nitrogen, transmission, compton, chromium, sourcecodepro, dunst, htop,
neofetch, nano, powerline, networkmanager, network-manager-applet, pip and zsh using
"sudo pacman -S rxvt-unicode vlc rofi pcmanfm vim unzip fontconfig moc ranger nitrogen transmission-qt compton chromium adobe-source-code-pro-fonts dunst htop neofetch nano powerline python-pip zsh networkmanager network-manager-applet"

Download San Francisco Display font
git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
mkdir ~/.fonts/
cd YosemiteSanFranciscoFont
mv *.ttf ~/.fonts/

Install MesloLGS Nerd Font
git clone https://github.com/romkatv/powerlevel10k-media.git
cd powerlevel10k-media
mv *.ttf ~/.fonts
fc-cache -vf ~/.fonts/

Download Powerline Fonts
mkdir ~/.local/share/fonts/
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
fc-cache -vf ~/.local/share/fonts/

Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

Install Powerlevel10k plugin for zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

Install zsh-autosuggestions, zsh-syntax-higlighting, zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
nano ~/.zshrc
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)
autoload -U compinit && compinit

Add Widevine support to Chromium
#!/bin/bash
LATEST=`curl https://dl.google.com/widevine-cdm/current.txt`
wget https://dl.google.com/widevine-cdm/$LATEST-linux-x64.zip
unzip $LATEST-linux-x64.zip
sudo mkdir /usr/lib/chromium
sudo mv libwidevinecdm.so /usr/lib/chromium
sudo chmod 644 /usr/lib/chromium/libwidevinecdm.so

Customised i3status
mkdir .config/i3status/
cp /etc/i3status.conf ~/.config/i3status/config
cd ~/.config/i3status/
touch net-speed.sh
Copy the text from https://raw.githubusercontent.com/i3/i3status/master/contrib/net-speed.sh
And paste it in net-speed.sh
chmod +x net-speed.sh
The dotfiles of i3 and i3status will take care of the rest

Vim Plug for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
The dotfile will take care of the rest, just run ':PlugInstall' after running Vim
