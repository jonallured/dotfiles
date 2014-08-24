c() {
  cd "$HOME/code/$1"
}

compctl -/ -S '' -W "$HOME/code" c

export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

alias ls='ls -aF'
alias cheddar='git commit --amend -CHEAD'
alias tree='git tree'
alias trake='rspec -t ~live -fprogress && cucumber -t~@live -prake'
alias leap=unicornleap
alias herd='unicornleap -n 3'
alias s='jfa sharpen'
alias mm='middleman'
alias gst='git status'
alias swift='/Applications/Xcode6-Beta2.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift'

eval "$(/Users/jon/hashrocket/hr/bin/hr init -)"
eval "$(/Users/jon/code/jfa/bin/jfa init -)"
