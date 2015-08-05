# Fabio's vim folder

## Git installation

	git clone https://github.com/Fale/vim.git
	cd vim
	git submodule init
	git submodule update
	cd ..
	mv vim .vim
	ln -s .vim/vimrc .vimrc

## HTTP installation

    cd ~
    curl https://fale.fedorapeople.org/vim.tar.gz | tar xz

## HTTP export

    rm -rf vim-export
    mkdir vim-export
    cd vim-export
    git clone https://github.com/Fale/vim.git
    cd vim
    git submodule init
    git submodule update
    cd ..
    mv vim .vim
    ln -s .vim/vimrc .vimrc
    tar czvf vim.tar.gz .vim/ .vimrc
    scp vim.tar.gz fale@fedorapeople.org:/home/fedora/fale/public_html/
    cd ..
    rm -rf vim-export
