#test
alias ls='ls -h'
alias ll='ls -lasF'
alias la='ls -a'
alias perlcritic='perlcritic --verbose=5 --harsh'
alias vssh='vagrant ssh'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
[ -e /etc/os-release ] && alias su='su --preserve-environment'

export EDITOR='vim'
export LANG=en_US.UTF-8
export CLICOLOR=1
export GOPATH=$PATH:/usr/local/bin/go

if [ -e /usr/share/terminfo/r/rxvt-unicode-256color ]; then
        export TERM='rxvt-unicode-256color'
        [ -e /etc/seas ] && unset COLORFGBG
    else
        export TERM='xterm-color'
fi

[ -e ~/.secure-env ] && source ~/.secure-env

#if perlbrew is installed source it, otherwise make it easy to install
if [ -e ~/perl5/perlbrew ]; then
    source ~/perl5/perlbrew/etc/bashrc
else
    echo 'perlbrew not found: run install_perlbrew to install' 
    alias install_perlbrew='curl -kL http://install.perlbrew.pl \
        >~/install.perlbrew.pl && echo "check out ~/install.perlbrew.pl\
 then run: cat ~/install.perlbrew.pl | bash if it looks OK"'
fi

#if rbenv is installed source it, otherwise make it easy to install
if [ -e ~/.rbenv/bin/rbenv ] || [ -e /usr/local/bin/rbenv ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init - --no-rehash)"
else
    echo 'rbenv not found: run install_rbenv to install' 
    alias install_rbenv='git clone https://github.com/sstephenson/rbenv.git ~/.rbenv && \
        git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build'
fi
