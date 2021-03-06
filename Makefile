ASDF_HOME = $HOME/.asdf/asdf.sh


conf-zsh:
	@echo ==============zsh installing==========
	@sudo apt install zsh
	@zsh --version
	@chsh -s $(shell which-zsh)
	@echo ==============restart your machine====

conf-asdf:
	@echo ==============asdf installing==========
	@git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
	@echo ". $(ASDF_HOME)" >> ~/.zshrc

conf-nvm:
	@sudo apt install wget
	@wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

git-install:
	@echo ==============git installing==========
	@sudo apt install git
	@sudo add-apt-repository ppa:git-core/ppa

ohmyzsh-install:
	@echo ==============ohmyzsh installing==========
	@sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

tmux-install:
	@echo ==============ohmyzsh installing==========
	@sudo apt install tmux

ag-install:
	@sudo apt install silversearcher-ag

yarn-install:
	@npm install -g yarn

python-dependency-install:
	@sudo apt-get install -y build-essential zlib1g-dev libbz2-dev bzip2 openssl libssl-dev libffi-dev


php-dependency-install:
	@sudo apt install -y libzip-dev libreadline-dev libpq-dev libonig-dev oniguruma libgd-dev libgd-gd2-perl libcurl4-openssl-dev libxml2-dev libxml2 gawk re2c

asdf-python:
	@asdf plugin add python
	@asdf install python latest
	@asdf install python 3.7.8

asdf-ruby:
	@asdf plugin add ruby
	@asdf install ruby latest

nvm-install:
	@nvm install 12
	@nvm use 12
	@nvm install 12.18.3

git-aliases:
	@git config --global alias.co checkout
	@git config --global alias.r rebase
	@git config --global alias.cm commit
	@git config --global alias.a add
	@git config --global alias.d diff
	@git config --global alias.b branch
	@git config --global alias.s status
	@git config --global alias.i init
	@git config --global alias.c clone
	@git config --global alias.p push
	@git config --global alias.st stash
	@git config --global core.editor "vim"

ssh-gitlab:
	@cd ~
	@mkdir -p .ssh
	@cd .ssh
	@echo Enter file in which to save the key diisi dengan 'gitlab'
	@echo password dikosongi
	@cd ~/.ssh && ssh-keygen -t ed25519 -C "gitlab"
	@sudo apt install xclip
	@cd ~/.ssh && ls
	@cd ~/.ssh && cat gitlab.pub

vundle-setup:
	@git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

activate-elementary-wifi:
	@nmcli radio wifi on

install-stow:
	@sudo apt install stow

install-antigen:
	@curl -L git.io/antigen > antigen.zsh
