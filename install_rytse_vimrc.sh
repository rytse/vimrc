#!/bin/sh
 set -e

 cd ~/.vim_runtime

 echo 'set runtimepath+=~/.vim_runtime

 source ~/.vim_runtime/vimrcs/basic.vim
 source ~/.vim_runtime/vimrcs/filetypes.vim
 source ~/.vim_runtime/vimrcs/plugins_config.vim
 source ~/.vim_runtime/vimrcs/extended.vim

 try
 source ~/.vim_runtime/my_configs.vim
 catch
 endtry' > ~/.vimrc

 echo "Finished installing amix's Awesome Ultimate Vim configuration! Moving on to rytse's custom stuff. Enjoy :-)"

 # vim tmux seamless navigation
 git clone git@github.com:christoomey/vim-tmux-navigator.git my_plugins/vim-tmux-navigator

 # YCM code completion for Python, C-like, and Rust
 sudo apt install libclang-8-dev
 git clone git@github.com:ycm-core/YouCompleteMe.git my_plugins/YouCompleteMe
 cd my_plugins/YouCompleteMe
 git submodule update --init --recursive
 python3 install.py --clang-completer --rust-completer

 echo "Finished installing rytse's custom addition to the Awesome Ultimate Vim configuration! Enjoy :-)"
