# If using modem don't forget to install modemmanager and usb_modeswitch

## Yay
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## System
```
yay -S firefox ranger alacritty rofi vistual-studio-code-bin go \ 
       go-tools goland pycharm-professional discord vim nodejs npm \
       feh polybar xorg-xinput
```

## Zsh/ohmyzsh
```
yay -S zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
~/.zshrc
```
plugins=( 
    # other plugins...
    zsh-syntax-highlighting
)
```

zsh-autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
~/.zshrc
```
plugins=( 
    # other plugins...
    zsh-autosuggestions
)
```

## Ranger
```
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```
i've added an additional binding: DD moves a selected file to trash located at ~/.local/share/Trash/files

## Fonts

```
sudo yay -S freetype2 fontconfig cairo
sudo yay -S nerd-fonts-jetbrains-mono ttf-jetbrains-mono ttf-ubuntu-font-family
```

/etc/profile.d/freetype2.sh
```
export FREETYPE_PROPERTIES="truetype:interpreter-version=40"
```

```
sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
```

copy fonts/local.conf to /etc/fonts/local.conf
