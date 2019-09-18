# Basic NeoVim
This is a basic Neovim dotfile meant to help you out getting started with
Neovim. It contains "enough" to get a lot of cool stuff done, but I hope you'll
end up customizing it to your own needs and throwing it upside down.

## Installation
Install some dependencies:

```
sudo apt install neovimg build-essential cmake python3-dev nodejs yarn npm python2 python3 python3-pip python2-pip ruby-full
```

If you use Nodenv or other managers to manage NodeJS versions for you, make sure
to install yarn.

```
npm install -g yarn
```

Then install the Neovim server Depndencies

```
gem install neovim
pip2 install neovim
pip3 install neovim neovim-remote flake8
```

Install neovim by following this guide: https://github.com/neovim/neovim/wiki/Installing-Neovim

Done? Clone this repo

```
rm -rf ~/.vim
mkdir -p ~/.config
git clone https://github.com/HendrikPetertje/neovim-starter.git ~/.config/nvim
```

Start `nvim` (ignore errors) and execute:

```
:PlugInstall
```

Then exit nvim through `:q` and restart it for changes to take effect.

Some plugins might require you to install some extra dependencies.
- AG needs [silver-searcher](https://github.com/ggreer/the_silver_searcher) and
  [Bat colours (optional)][https://github.com/sharkdp/bat]
- FZF needs [Command-line Fuzzy Finder](https://github.com/junegunn/fzf)

## Features
### keys and leaders

Don't worry with this section if you've never worked with these (or made any
mods yourself). 
The global standard key is `CTRL`, the Leader is mapped to `,` while the
Silent-Leader is mapped to `\`.

For the sake of simplicity there is only 1 clipboard in this configuration. If
you copy something you can simply paste it into vim with `p`, you can copy
things by `d`eleting them or copying (yanking) selections using `y`. 
Check out line 6 in `vimrc.standards` if you wish to take of the "training 
wheels".

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
