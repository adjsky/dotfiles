![Screenshot](https://i.imgur.com/5sikWqF.png)

# If using modem don't forget to install modemmanager and usb_modeswitch

## Pacman mirror list
* /etc/pacman.d/mirrorlist
* https://archlinux.org/mirrorlist/

## Locales
* Uncomment ru_RU.UTF-8 UTF-8 in /etc/locale.gen
* Run locale-gen
* Overwrite /etc/locale.conf with this
```
LANG=en_US.UTF-8
LC_ADDRESS=ru_RU.UTF-8
LC_IDENTIFICATION=ru_RU.UTF-8
LC_MONETARY=ru_RU.UTF-8
LC_MEASUREMENT=ru_RU.UTF-8
LC_NUMERIC=ru_RU.UTF-8
LC_TIME=ru_RU.UTF-8
```

## Sudo
/etc/sudoers
```
<username> ALL=(ALL) ALL
```

## Yay
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## System
```
yay -S git firefox ranger alacritty rofi visual-studio-code-bin go go-tools goland pycharm-professional discord nodejs npm feh polybar xorg-xinput docker docker-compose pulseaudio-control network-manager-applet light-locker xfce4-power-manager picom lxappearance nautilus xfce4-screenshooter pavucontrol
```

## Neovim/vim-plug
```
yay -S neovim neovim-symlinks
```

* Copy nvim config
* In nvim write :PackerSync
* For coc.nvim:
* * coc-tailwindcss
* * coc-sumneko-lua
* * coc-prettier
* * coc-pairs
* * coc-lua
* * coc-eslint
* * coc-cssmodules
* * coc-yaml
* * coc-tsserver
* * coc-styled-components
* For treesitter:
* * tsx
* * typescript

## Zsh/ohmyzsh
```
yay -S zsh
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
yay -S freetype2 fontconfig cairo \
       nerd-fonts-jetbrains-mono ttf-jetbrains-mono noto-fonts ttf-font-awesome
```

/etc/profile.d/freetype2.sh
```
export FREETYPE_PROPERTIES="truetype:interpreter-version=40"
```

```
sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-hinting-slight.conf /etc/fonts/conf.d
```

copy fonts/local.conf to /etc/fonts/local.conf
