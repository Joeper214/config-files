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

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/joeper/Documents/work/juiz_dot/image_processing_service/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/joeper/Documents/work/juiz_dot/image_processing_service/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/joeper/Documents/work/juiz_dot/image_processing_service/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/joeper/Documents/work/juiz_dot/image_processing_service/node_modules/tabtab/.completions/sls.zshexport PATH="/usr/local/opt/ncurses/bin:$PATH"
