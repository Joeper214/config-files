# Path to your oh-my-zsh installation.
  export ZSH=/Users/joeper/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=""

plugins=(web-search pip docker fabric)
source $ZSH/oh-my-zsh.sh


if [ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh ]; then
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
fi

autoload -U promptinit; promptinit
prompt pure

source "$HOME/.zplugin/bin/zplugin.zsh"

zplugin load zdharma/history-search-multi-word

zplugin ice compile"*.lzui"
zplugin load zdharma/zui


# Zsh-Diff-So-Fancy
zplugin ice as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy


