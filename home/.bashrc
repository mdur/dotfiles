alias l='ls -h'
alias ll='ls -lashF'
alias la='ls -ah'
alias perlcritic='perlcritic --verbose=5 --harsh'
alias vssh='vagrant ssh'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
[ -e /etc/os-release ] && alias su='su --preserve-environment'

export EDITOR='vim'
export CLICOLOR=1

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
    else
        export TERM='xterm-color'
fi

[ -e ~/perl5/perlbrew ] && source ~/perl5/perlbrew/etc/bashrc
[ -e ~/.secure-env ] && source ~/.secure-env
[ -e /usr/local/bin/ ] && export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init - --no-rehash)"
