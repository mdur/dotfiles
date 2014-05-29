dotfiles
========

This repo is a [homesick] castle, for sychronizing dotfiles across multiple computers.

Requirements
------------

 - rubygems
 - [homesick]

Installation
------------

After installing both `ruby` and `rubygems`, run:

```
gem install --user-install homesick
alias homesick="$(ruby -rubygems -e 'puts Gem.user_dir')/bin/homesick"
homesick clone https://github.com/mdur/dotfiles
homesick symlink dotfiles
```

[homesick]:https://github.com/technicalpickles/homesick
