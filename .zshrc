
# use macvim as vim version
# alias vi='/usr/local/Cellar/macvim/8.2-162/MacVim.app/Contents/MacOS/Vim'
# alias vim='/usr/local/Cellar/macvim/8.2-162/MacVim.app/Contents/MacOS/Vim'
alias vi='nvim'
alias vim='nvim'

# custon prompt
export PS1="🧽/%1d$"

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
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


export PATH="/usr/local/opt/python@3.8/bin:$PATH"
