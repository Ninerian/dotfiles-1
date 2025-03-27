# zmodload zsh/zprof

# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

typeset -A ZI
ZI[BIN_DIR]="${HOME}/.zi/bin"
source "${ZI[BIN_DIR]}/zi.zsh"

autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

export TERM=xterm-256color

#s Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"
export ZSH_DISABLE_COMPFIX="true"

zi ice depth'1' atload"[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh" nocd
zi light romkatv/powerlevel10k


# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(common-aliases colorize compleat dirpersist kube-ps1 git git-extras jenv history cp git-flow-avh grunt z docker docker-compose )

for plugin in "${plugins[@]}"
do
   zi snippet OMZP::$plugin
done

zi snippet https://raw.githubusercontent.com/wbingli/zsh-wakatime/refs/heads/master/zsh-wakatime.plugin.zsh
zi snippet OMZ::lib/git.zsh
zi snippet OMZ::plugins/git/git.plugin.zsh

zi ice as"completion"
zi snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

zinit load 'zsh-users/zsh-history-substring-search'
zinit ice wait atload'_history_substring_search_config'

source $HOME/.bindings

# source $ZSH/oh-my-zsh.sh

# autoload -U add-zsh-hook

# Customize to your needs...
unsetopt correct

# run fortune on new terminal :)
# fortune

# Increase file limit
ulimit -n 10240

# Set default java

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh


# fnm
eval "`fnm env`"

# zprof

# bun completions
[ -s "/Users/danielgrosse/.bun/_bun" ] && source "/Users/danielgrosse/.bun/_bun"
