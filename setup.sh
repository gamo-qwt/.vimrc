file=.vimrc
cd ~/
if [ -e $file ]; then
	rm .vimrc
	mv ~/vimrc/.vimrc ~/.vimrc
else
	mv ~/virc/,vimrc ~/.vimrc
fi

