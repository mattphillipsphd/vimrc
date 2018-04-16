Install tmux and vim.

Note that on Windows Bash systems you will need to manually create the relevant directories (the alternative is to reconfigure default paths, which probably creates more problems than it solves):

Install tmux with plugins:

$ mkdir ~/.tmux
$ mkdir ~/.tmux/plugins
$ git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/resurrect
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
$ cp <path>/mattphillipsphd/vimrc/.tmux.conf ~
$ tmux source ~/.tmux.conf

Install vim plugins:

$ mkdir ~/.vim
$ mkdir ~/.vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ cp <path>/mattphillipsphd/vimrc/.vimrc ~
$ vim +PluginInstall +qall

And that should do it for basic setup.  For filetype-specific controls:

$ mkdir ~/.vim/ftplugin
$ cp <path>/ftplugin/cpp.vim ~/.vim/ftplugin

And any others that might be present.  See

https://vi.stackexchange.com/questions/4/how-can-i-change-the-default-indentation-based-on-filetype

and

https://github.com/tmux-plugins/tpm
https://github.com/VundleVim/Vundle.vim

for more info if needed
