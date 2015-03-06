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
