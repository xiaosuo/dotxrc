alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [ `uname` = 'Darwin' ]; then
	alias ls='ls -G'
else
	alias ls='ls --color=auto'
fi
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias vi='vim'

export EDITOR=vim
export PAGER='less -r'

export GOPATH=~/gocode
export PATH=$GOPATH/bin:$PATH

if [ $TERM = "linux" ]; then
	if [ $EUID -eq 0 ]; then
		export PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\h \[\e[34;1m\]\W \[\e[31;1m\]#\[\e[0m\] "
	else
		export PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\h \[\e[34;1m\]\W \[\e[33;1m\]$\[\e[0m\] "
	fi
else
	if [ $EUID -eq 0 ]; then
		export PS1="\[\e]2;\u@\h \W\a\e[36;1m\]\u@\[\e[32;1m\]\h \[\e[34;1m\]\W \[\e[31;1m\]#\[\e[0m\] "
	else
		export PS1="\[\e]2;\u@\h \W\a\e[36;1m\]\u@\[\e[32;1m\]\h \[\e[34;1m\]\W \[\e[33;1m\]$\[\e[0m\] "
	fi
fi

if which ruby &>/dev/null && which gem &>/dev/null; then
	export PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

export PATH=~/bin:$PATH

if which boot2docker &>/dev/null; then
	if [ `boot2docker status 2>/dev/null` = "running" ]; then
		eval "$(boot2docker shellinit 2>/dev/null)"
	fi
fi

test -f ~/.bashrc.local && source ~/.bashrc.local
