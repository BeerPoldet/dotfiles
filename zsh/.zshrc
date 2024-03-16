# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh_plugins.sh

export EDITOR='nvim'
export VISUAL=$EDITOR
# x86_64
# export PATH=$PATH:/usr/local/homebrew/bin
# ARM
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:~/.local/bin

alias ibrew='arch -x86_64 /usr/local/Homebrew/bin/brew'

alias vim=/opt/homebrew/bin/nvim

alias python="$(pyenv which python)"
alias pip="$(pyenv which pip)"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

export JQ_COLORS='0;31:0;39:0;39:0;39:0;32:1;39:1;39'

setopt hist_ignore_all_dups
setopt hist_ignore_space

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.config/.jenvrc

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# bun completions
[ -s "/Users/poldet/.bun/_bun" ] && source "/Users/poldet/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:$HOME/.maestro/bin
