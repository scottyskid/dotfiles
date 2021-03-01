DOTFILES=$HOME/dotfiles

mkdir -p $HOME/.config/nvim/
mkdir -p $HOME/.config/zsh/
ln -s $DOTFILES/bin $HOME/bin
ln -s $DOTFILES/zsh/zshrc.dotfile $HOME/.zshrc
ln -s $DOTFILES/zsh/zshrc.dotfile $HOME/.config/zsh/.zshrc
ln -s $DOTFILES/nvim/vimrc.dotfile $HOME/.config/nvim/init.vim
ln -s $DOTFILES/zsh/config/unicode.p10k.zsh.dotfile $HOME/.config/zsh/.p10k.zsh
ln -s $DOTFILES/tmux/tmux.conf.dotfile $HOME/.tmux.conf
