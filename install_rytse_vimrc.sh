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

 sudo apt install libclang-8-dev
 
 cd ~/.vim_runtime/my_plugins
 git clone https://github.com/christoomey/vim-tmux-navigator.git
 git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
 git clone https://github.com/nvie/vim-flake8.git
 git clone https://github.com/Rigellute/rigel.git
 git clone --depth 1 https://github.com/codota/tabnine-vim
 
 echo "Finished installing rytse's custom addition to the Awesome Ultimate Vim configuration! Enjoy :-)"
