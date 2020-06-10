
export PS1="[\u:\w]$ "
export PATH="~/bin:~/.local/bin:$PATH"

if [ ! `tail -n 1 /etc/ld.so.conf` == $HOME/lib ]; then
echo $HOME/lib >> /etc/ld.so.conf
fi
ldconfig

if [ ! -f "/usr/bin/vim" ]; then
  apt update
  apt install -y -f vim
  apt install -y -f virtualenv
  apt install -y -f openssh-server
  apt install -y -f openssh-client
  pip install --user virtualenvwrapper
fi
# virtualenv in /usr/bin

export LD_LIBRARY_PATH=$HOME/lib:$HOME/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

export WORKON_HOME=$HOME/Envs  
. $HOME/.local/bin/virtualenvwrapper.sh                                     

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

LC_ALL=C


