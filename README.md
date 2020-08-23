Install tmux and vim.

Note that on Windows Bash systems you will need to manually create the relevant directories (the alternative is to reconfigure default paths, which probably creates more problems than it solves):

Install tmux with plugins:

Linux:
$ sudo apt install tmux

MacOS:
$ brew install tmux

$ mkdir ~/.tmux
$ mkdir ~/.tmux/plugins
$ git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/resurrect
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
$ cp ~/Repos/mattphillipsphd/vimrc/.tmux.conf ~
$ tmux source ~/.tmux.conf

Install vim plugins (vim should already be present):

$ mkdir ~/.vim
$ mkdir ~/.vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ cp ~/Repos/mattphillipsphd/vimrc/.vimrc ~
$ vim +PluginInstall +qall

And that should do it for basic setup.  For filetype-specific controls:

$ mkdir ~/.vim/ftplugin
$ cp ~/Repos/mattphillipsphd/vimrc/ftplugin/cpp.vim ~/.vim/ftplugin

And any others that might be present.  See

https://vi.stackexchange.com/questions/4/how-can-i-change-the-default-indentation-based-on-filetype

and

https://github.com/tmux-plugins/tpm
https://github.com/VundleVim/Vundle.vim

for more info if needed.

YouCompleteMe: YCM is not so easy to install but is an amazing tool.  The website and novel-length instructions are here:

http://valloric.github.io/YouCompleteMe/

Critically, it won't work properly after a successful install.  There are further things you have to do to actually use it, such as setting the appropriate flags in the .vimrc file, and creating a .ycm_extra_conf.py file.  This mechanism allows for extraordinary project-specific customization but for now we just have one default file.

$ cp <path>/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py ~/.vim/bundle/YouCompleteMe

