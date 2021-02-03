symlink:
	ln -s -f ~/dev/dotfiles/.zshrc ~/.zshrc
	ln -s -f ~/dev/dotfiles/.vimrc ~/.vimrc
	ln -s -f ~/dev/dotfiles/.gitconfig ~/.gitconfig
	ln -s -f ~/dev/dotfiles/.tmux.conf ~/.tmux.conf

brew-install:
	brew bundle -file ./Brewfile

brew-dump:
	brew bundle dump --describe
