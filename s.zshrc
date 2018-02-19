export ZSH=/home/yuto/.oh-my-zsh
setopt no_beep
if [ -f /usr/bin/screenfetch ]; then screenfetch; fi

alias editor="vi"
function hoge (){
    if ! [ `echo $1 | grep 'zshrc'` ] ; then
        editor $1
    else
        if ! [ `echo $1 | grep 'bashrc'` ] ; then
            editor $1
        else
        python ~/.warn
	i3lock
    fi
}
function vim (){
    hoge $1
}
function emacs (){
    hoge $1
}

function cpf(){
    cat $1 | xsel --clipboard --input
}

ZSH_THEME="gnzh"

DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias python='python3'
alias python2='python2'
