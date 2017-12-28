cd ~/
if[-e .vimrc]; then
	rm .vimrc
	mv ~/vimrc/.vimrc ~/.vimrc
else
	mv ~/virc/,vimrc ~/.vimrc
fi

