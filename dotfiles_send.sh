# config = alias for git
echo Write filenames:
read filenames #input
echo What did you change? [DEFAULT: empty]:
read changed #commit message
cd $HOME

config add $filenames
config commit --allow-empty-message -m "$changed"
config push -u origin master
