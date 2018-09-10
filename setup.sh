file=.vimrc
cd ~/
if [ -e $file ]; then
	rm .vimrc
fi
	cp -p ~/vimrc/vimrc ~/.vimrc

