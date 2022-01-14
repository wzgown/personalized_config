echo $PWD

mkdir -p ~/.config/fish

# 安装nvim插件管理器 
mkdir -p ~/.config/nvim
mkdir -p ~/.local/share/nvim/site/autoload
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s $PWD/neovim/init.vim ~/.config/nvim/init.vim

ln -s $PWD/tmux.conf ~/.tmux.conf 
ln -s $PWD/fish/config.fish ~/.config/fish/config.fish
