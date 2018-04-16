Install tmux and vim.

Note that on Windows Bash systems you will need to manually create the relevant directories (the alternative is to reconfigure default paths, which probably creates more problems than it solves):

$ mkdir ~/.vim
$ mkdir ~/.vim/bundle

Install tmux with plugins:

$ mkdir ~/.tmux
$ mkdir ~/.tmux/plugins
$ git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/resurrect
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
$ cp <path>/mattphillipsphd/vimrc/.tmux.conf ~
$ tmux source ~/.tmux.conf

Install vim plugins:

$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ cp <path>/mattphillipsphd/vimrc/.vimrc ~
$ vim +PluginInstall +qall

And that should do it.  See

https://github.com/tmux-plugins/tpm
https://github.com/VundleVim/Vundle.vim

for more info if needed
