alias vi='nvim'
alias vim='nvim'
export EDITOR="nvim"

# custon prompt
export PS1="🍹/%1d$"

# tab-completion library for Git
autoload -Uz compinit && compinit

# git show at right prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# ' # show at left side
zstyle ':vcs_info:git:*' formats '🌵%b🌵'

# fzf
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
bindkey -s '^p' 'vi $(fzf)\n'

. /usr/local/opt/asdf/asdf.sh
export PATH="/Users/wijinlau/.asdf/installs/nodejs/13.12.0/.npm/bin:$PATH"

eval $(thefuck --alias)
