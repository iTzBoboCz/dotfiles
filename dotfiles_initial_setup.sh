echo This script initiates git setup and should be used with caution
echo Are you sure? [Y/N]:
read accepted

#^^ transforms strings to uppercase
acceptedFinal=${accepted^^}

#https://www.shellscript.sh/tips/case/
if [ $acceptedFinal !=  "Y" ]; then
	exit
fi

cd $HOME

# config = alias for git restart
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'" >> $HOME/.bashrc

bash #restart

config clone https://github.com/iTzBoboCz/dotfiles.git
config config --local status.showUntrackedFiles no
config config credential.helper store
