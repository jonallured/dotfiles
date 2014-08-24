c() {
  cd "$HOME/code/$1"
}

compctl -/ -S '' -W "$HOME/code" c

alias ls='ls -aF'
alias cheddar='git commit --amend -CHEAD'
alias tree='git tree'
alias trake='rspec -t ~live -fprogress && cucumber -t~@live -prake'
alias leap=unicornleap
alias herd='unicornleap -n 3'
alias s='jfa sharpen'
alias dush='du -sh *'
alias mm='middleman'
alias gst='git status'
alias swift='/Applications/Xcode6-Beta2.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift'
alias k='heroku'
alias kc='heroku run console'
alias deploy='script/deploy'
alias hsync='script/hsync'

eval "$(/Users/jon/code/hr/bin/hr init -)"
eval "$(/Users/jon/code/jfa/bin/jfa init -)"
