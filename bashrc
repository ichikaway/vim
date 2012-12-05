# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions


export PATH=$PATH:/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/apache/bin:/usr/local/mysql/bin:/usr/local/php/bin:/usr/local/git/bin:/usr/local/tig/bin


export PAGER="less -r"

alias ls='ls -F --color'
alias grep='grep --color'

bind -x '"\C-oo": READLINE_LINE="${READLINE_LINE:0:$READLINE_POINT}`git symbolic-ref HEAD | cut -d/ -f 3` ${READLINE_LINE:${READLINE_POINT}}"'
bind -x '"\C-oc": READLINE_LINE="${READLINE_LINE:0:$READLINE_POINT}`pwd` ${READLINE_LINE:${READLINE_POINT}}"'
bind -x '"\C-ot": READLINE_LINE="${READLINE_LINE:0:$READLINE_POINT}`date +%Y%m%d` ${READLINE_LINE:${READLINE_POINT}}" ;declare -i RLP; RLP=$READLINE_POINT;READLINE_POINT=$RLP+8'


if [ -r "$HOME/.git-completion.bash" ]; then # = git-completion.bash
	. $HOME/.git-completion.bash
	PS1="\h: [\$(__git_ps1 \"%s) \")\W] \u\\$ "
else
	PS1="${PS1}[\w]\\$ "
fi


