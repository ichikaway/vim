# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions


export PATH=$PATH:/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/apache/bin:/usr/local/mysql/bin:/usr/local/php/bin:/usr/local/git/bin



    if [ -r "$HOME/.git-completion.bash" ]; then # = git-completion.bash

        . $HOME/.git-completion.bash

	    PS1="\h: [\$(__git_ps1 \"%s) \")\W] \u\\$ "

	        else

		    PS1="${PS1}[\w]\\$ "

     fi


