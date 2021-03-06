# Basic NeoVim
This is a basic Neovim dotfile meant to help you out getting started with
Neovim. It contains "enough" to get a lot of cool stuff done, but I hope you'll
end up customizing it to your own needs and throwing it upside down.

![sample](https://i.imgur.com/nckWhp0.png)

## Installation
I'm assuming that you are on some kind of Debian based system (ubuntu & friends, elementary, pop)

Install some dependencies:

```
sudo apt install build-essential cmake python3-dev nodejs python2 python3 python3-pip python-pip ruby-full python-neovim python3-neovim
```

the system built-in node comes with all kinds of sudo limitations, it's therefore smart to install nodejs through either [nodenv](https://github.com/nodenv/nodenv) or [NVM](https://github.com/nvm-sh/nvm) before proceeding with the rest of this isntall guide (if you are one of the EcmaNative students, lab 0 has you covered already).

When done execute: 

```
npm install -g yarn
```

Then install the Neovim server Depndencies

```
gem install neovim (or sudo gem install neovim)
```

Install neovim by following this guide: https://github.com/neovim/neovim/wiki/Installing-Neovim

_____________________
Note: at the time of this writing neovim 0.4 was just released. Some dependencies in Neovim-starter 
depend on this newer version of neovim. if you are on ubuntu, you could consider doing something like this:

```
mkdir -p ~/.config
cd ~/.config
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
sudo ln -s "$PWD/nvim.appimage" /usr/bin/nvim
cd
```

Once Debian & Ubuntu start offering 0.4, simply `rm /usr/bin/nvim` and `sudo apt install neovim` to 
get back on the "system official builds"
_____________________

Done? Clone this repo

```
rm -rf ~/.vim
mkdir -p ~/.config
git clone https://github.com/HendrikPetertje/neovim-starter.git ~/.config/nvim
```

Start `nvim` (ignore errors about Tomorrow-Nigh , etc.) and execute:

```
:PlugInstall
```

Then exit nvim through `:q` and restart it for changes to take effect.

**then just leave your nvim sitting there for a while**. CoC (the code completer) will install some linting extensions in the background (you'll see occasional green messages in the bottom of the neovim window detailing the different installed plugins).

Some plugins might require you to install some extra dependencies.
- AG needs [silver-searcher](https://github.com/ggreer/the_silver_searcher)
- FZF needs [Command-line Fuzzy Finder](https://github.com/junegunn/fzf) and
  [Bat colours](https://github.com/sharkdp/bat) (optional)

## Features
### keys and leaders

Don't worry with this section if you've never worked with these (or made any
mods yourself). 
The global standard key is `CTRL`, the Leader is mapped to `,` while the
Silent-Leader is mapped to `\`.

For the sake of simplicity there is only 1 clipboard in this configuration. If
you copy something you can simply paste it into vim with `p`, you can copy
things by `d`eleting them or copying (yanking) selections using `y`. 
Check out line 6 in `vimrc.standards` if you wish to take the "training 
wheels" off.

Note.
In this document I describe the use of short-cuts.. Like `,cu`. these commands
are CASE-sensitive, so look closely if I'm using uppercase or lowercase things.

### Module & Plugin management

This is done by Plug. You can update your modules and plugins By executing:

```
:PlugUpdate
and
:PlugUpgrade
```

In your terminal

## Plugins
### Vim Repeat

For more info on this check out Tim Popes description:
https://github.com/tpope/vim-repeat

### Vim airline & vim-airline-themes

Vim airline adds an awesome bar of information to the bottom of each Vim window.
In this bar you can see if you are in normal|insert|visual, what branch you're
on in git, what the syntax highlighter is doing and how many typos you've been
coding into your code.

More info on airline here:
https://github.com/vim-airline/vim-airline

### Vim Tomorrow theme

This is an (ugly) theme for VIM. I'd advice you to check out https://vimcolors.com/
and pick a btter theme. You can install the theme in `vimrc.plugins` and set it
in `vimrc.styling`

### Indent guides

Add fancy indentatino guides to your vim.
more info here:

https://github.com/nathanaelkane/vim-indent-guides


### Nerdtree & nerdtab

Add the ability to get a file-tree real quick using [CTRL] + [p]
You can also open Nertree and highlight the current file using `,p`

To create tabs type `:tabe`, to switch between tabs type `gt`, `gT` or use your
mouse

More info:
https://github.com/scrooloose/nerdtree
https://github.com/jistr/vim-nerdtree-tabs


### Nerd Commenter

Nerd commenter allows you to comment out (VISUAL mode) selected code using `,cc`
and `,cu`

More info:
https://github.com/scrooloose/nerdcommenter

### Ag

Ag allows you to search for words, strings and other things in your project.
Simply type `Ag "your query"` to start searching

More info:
https://github.com/rking/ag.vim

### FZF file search

This one is super cool. 
- You can start searching in your project using `,,`. 
- You can see open files (in buffers) using `,b`, 
- You can search for lines in all open files using `,l`
- You can search for tags using `,t`
- you can switch between current and previous file using `CTRL` + `e`

### CTRL p (on CTRL L)

Press `CTRL` + `L` to search for things (works the same as `,,`, but has less
features)

### Greplace

Greplace can be used to search your entire project and change something.
Start by typing `,Gs`, type your search query, make changes and type `,Gr` to
apply your changes.

### Gundo

Gundo allows you to browse back in history and undo things. Press `,u` to get
started. Warning. This plugin is quite heavy and might not work on slower
devices like Raspberry pi-s

### Vim misc

random things that make sense.

More info:
https://github.com/xolox/vim-misc

### Vim session

This plugin allows you to save th state of your vim and open everything back up
later.

You can save your session with `,SS` and recall your session with `,SO`

More info:
https://github.com/xolox/vim-session


### Swtich vim, endwise and delimate

Automatically adds closing symbols. so when you type `"` it will insert `"`
after your cursor.

More info:
https://github.com/AndrewRadev/switch.vim

### Urls to links

Turns urls in your code into clickable links

### xterm-color-table

simple plugin, check the repo for more info
https://github.com/guns/xterm-color-table.vim

### Yankring
type `:YRShow` to view the historical content of your clipboard

### Editorconfig
For when you are dealing with `.editorconfig` files.

### Vim Fugitive and Merginal
Makes Git awesome. Check out the guides for more info:
https://github.com/tpope/vim-fugitive

### Tmux navigator.
For when you are dealing with TMUX sessions around your neovim

### Coc.nvim
An extensive library for code completion and Linting help.

You can navigate between auto-complete options using `[TAB]` or `[CTRL]` + `n`
or `[CTRL]` + `p`.

Coc comes pre-installed with a bunch of linters, You can install 
additional auto-completes and linters using the build-in market-place:

`:CocList marketplace`

Check out their repo for all info.
https://github.com/neoclide/coc.nvim

### Ale Linter
A bit less helpful than Coc, but it takes the languages CoC can't help you with.
