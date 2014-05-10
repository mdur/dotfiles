alias ll="ls -lFa"
alias la="ls -a"
alias perlcritic="perlcritic --verbose=5 --harsh"
alias vssh='vagrant ssh'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

export EDITOR='vim'
export CLICOLOR=1

[ -e ~/perl5/perlbrew ] && source ~/perl5/perlbrew/etc/bashrc
[ -e ~/.secure-env && source ] ~/.secure-env
[ -e /usr/local/bin/rbenv ] && eval "$(rbenv init - --no-rehash)"
