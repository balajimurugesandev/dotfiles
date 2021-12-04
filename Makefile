all: sync

sync:
	mkdir -p ~/.config/fish
	mkdir -p ~/.tmux/

	[ -f ~/.config/fish/config.fish ] || ln -s $(PWD)/config.fish ~/.config/fish/config.fish
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/nvimconf ~/.config/nvim/init.vim
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmuxconf ~/.tmux.conf
	# [ -f ~/.tmux/tmux-dark.conf ] || ln -s $(PWD)/tmux-dark.conf ~/.tmux/tmux-dark.conf
	# [ -f ~/.tmux/tmux-light.conf ] || ln -s $(PWD)/tmux-light.conf ~/.tmux/tmux-light.conf
	# [ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig

	# don't show last login message
	# touch ~/.hushlogin

clean:
	rm -f ~/.vimrc 
	rm -f ~/.config/fish/config.fish
	rm -f ~/.tmux.conf
	rm -f ~/.config/nvim/init.vim
	# rm -f ~/.gitconfig

.PHONY: all clean sync

