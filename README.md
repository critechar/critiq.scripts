# critiq.scripts
Here's a collection of scripts and configuration files that I use.

## My system overview
* **Operating System**: [Arch Linux](https://wiki.archlinux.org/index.php/The_Arch_Way)
* **Window Manager**: [i3](https://i3wm.org) + X
* **Terminal Emulator**: [urxvt](https://wiki.archlinux.org/index.php/Rxvt-unicode)
* **Text editor**: [neovim](http://neovim.org/)
* **Shell**: zsh, bash
* **File system**: [btrfs](https://btrfs.wiki.kernel.org/index.php/UseCases)

## Repo directories
* **AUR**: custom PKGBUILDs that I use
* **config**: `$HOME/.config` files
* **local**: `$HOME/.local` files
  * **bin**: tiny scripts that make my life easier
* **nvim**: neovim configuration files
  * **plugin**: short scripts, mostly borrowed from various sources (see respective files).
  * **colors/desertEx-v2.vim**: Modified version of [desertEx.vim](https://github.com/mbbill/desertEx) colorscheme.
* **zsh**: zsh config files, contains code borrowed from:
  * [spicycode](https://github.com/spicycode/ze-best-zsh-config/blob/master/.zsh) for the base config
  * [anishathalye](https://github.com/anishathalye/dotfiles/blob/master/zsh) for asynchronously updating prompt with git info
  * [fasd](https://github.com/clvv/fasd)

## Installation and removal
Just run `install.sh` to create relevant directories and links... `--no-x` option skips downloading fonts and does not install Xdefaults stuff.
Run `uninstall.sh` to remove all links created by `install.sh` (removes only if it is a symbolic link).

## My filesystem layout
There is only a single "Linux" partition which is formatted with btrfs. This contains the following subvolumes and the corresponding mount points:
```
Subvolume       Mount point         Description
<0>              --                 The root subvolume of a btrfs partition
 |- boot        /boot
 |- root        /
 |- home        /home               Note: All the child subvolumes will appear as directories in /home
 |  |- shared    --                 Shared files between users
 |  |- user1     --
 |  |- user2     --
 |  `- snaps     --                 Used to keep snapshots of user's home subvolumes.
 `- snaps        --                 Used to keep snapshots of root and boot subvolumes.
    |...         --
```

## License
Many files in this repo were originally written by various authors, whose names are provided in those respective files.
The rest of the files, authored by me, are released under [MIT License](http://opensource.org/licenses/MIT).
