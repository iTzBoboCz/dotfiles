# config = alias for git
echo Write filenames:
read filenames #input
echo What did you change?:
read changed #commit message
cd $HOME

config add $filenames
config commit -m "$changed"
config push -u origin master
