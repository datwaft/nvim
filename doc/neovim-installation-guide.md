# Neovim Installation Guide

Welcome to the *neovim* installation guide. For extra information about alternate ways to install *neovim* you can visit this [link](https://github.com/neovim/neovim/wiki/Installing-Neovim).

## 0. Preparation

Please update your *Linux* package manager before installing anything. You can do it like this:

```sh
sudo apt update
sudo apt upgrade
```

Also, to download neovim you need *git*:

```shell
sudo apt install -y git
```

## 1. Getting build essentials

These are the essentials for building neovim:

<details>
<summary>Essentials list</summary>
	
- `build-essential`
- `ninja-build`
- `gettext`
- `libtool`
- `libtool-bin`
- `autoconf`
- `automake`
- `cmake`
- `pkg-config`
- `unzip`
- `mercurial` (with Debian)
		
</details>

You can get these essentials like this:

```shell
sudo apt install -y build-essential ninja-build gettext libtool libtool-bin autoconf automake cmake pkg-config unzip
# Only if you use Debian like me.
sudo apt install -y mercurial
```

## 2.  Building and installing *neovim* from source

These steps will install neovim to `/usr/local`, if you want to install it in another place you can visit this [link](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source).

```bash
# 1. Go to the directory where you want to download neovim.
mkdir ~/downloads 2> /dev/null; cd ~/downloads
# 2. Download neovim (this will download the latest cutting-edge version)
git clone https://github.com/neovim/neovim && cd neovim
# 3. Build neovim
sudo make CMAKE_BUILD_TYPE=Release
# 4. Install neovim to /usr/local
sudo make install
```

### Uninstalling *neovim*

If you want to install neovim – for example, if you want to update neovim – you can do it like this:

```shell
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
```

