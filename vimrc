" " Pyenv and rbenv config in case you rock rbenv/pyenv
" let g:python_host_prog = '~/.pyenv/versions/neovim2/bin/python'
" let g:python3_host_prog = '~/.pyenv/versions/neovim3/bin/python'
" let g:ruby_host_prog = '~/.rbenv/versions/2.6.2/bin/neovim-ruby-host'

let mapleader = ","
let maplocalleader = "\\"

" Plugins: Load all the plugins ----------------------------------------------
runtime vimrc.plugins

" Standard: file settings ----------------------------------------------------
runtime vimrc.standards

" " Plugin: Indent level navigation --------------------------------------------
runtime vimrc.indent_level_navigation

" " Plugin: vimbits ------------------------------------------------------------
runtime vimrc.vimbits

" " Styling: All styles --------------------------------------------------------
runtime vimrc.styling
