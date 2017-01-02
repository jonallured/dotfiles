c() {
  cd "$HOME/code/$1"
}

compctl -/ -S '' -W "$HOME/code" c

alias ls='ls -aF'
alias lh='ll -h'
alias cheddar='git commit --amend -CHEAD'
alias tree='git tree'
alias trake='rspec -t ~live -fprogress && cucumber -t~@live -prake'
alias leap='unicornleap'
alias herd='unicornleap -n 3'
alias dush='du -sh *'
alias mm='middleman'
alias k='heroku'
alias p='heroku run console -r production'
alias s='heroku run console -r staging'
alias deploy='script/deploy'
alias hsync='script/hsync'
alias solo='pear -u'

eval "$(/Users/jon/code/dotmatrix/hr/bin/hr init -)"
eval "$(/Users/jon/code/jfa/bin/jfa init -)"

export LAB_NOTES_HOME="/Users/jon/code/lab_notes"

export GOPATH="$HOME/code/go"
export PATH="$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin"
