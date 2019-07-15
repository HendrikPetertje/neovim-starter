# Basic vim

## Installation
Install some dependencies:

```
sudo apt update
sudo apt remove vim
sudo apt install vim-nox build-essential cmake python3-dev
```

Then clone this repo to the right place:

```
rm -rf ~/.vim
git clone https://github.com/HendrikPetertje/vim-starter.git ~/.vim
```

Start vim (ignore errors) and execute:

```
:PlugInstall
```
