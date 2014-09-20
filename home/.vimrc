set hidden
set ignorecase
set smartcase
set scrolloff=3
set ruler
" Intuitive backspacing in insert mode
set backspace=indent,eol,start
set nowrap
set expandtab
set shiftwidth=4
set shiftround
set nojoinspaces
set t_Co=256
"colorscheme molokai
"colorscheme mustang
"colorscheme wombat 
"colorscheme distinguished
"colorscheme grb256
"colorscheme acidcupcake 
colorscheme Tomorrow-Night-Eighties 
set background=dark
highlight Pmenu ctermfg=0 ctermbg=3
highlight PmenuSel ctermfg=0 ctermbg=7
if &bg == "dark"
    highlight MatchParen ctermbg=darkblue guibg=blue
endif

"Make tabs, trailing whitespace, and non-breaking spaces visible
"exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
"set list

"Highlight the 81st column
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
execute pathogen#infect()
syntax on
filetype indent plugin on
if has("autocmd")
    filetype indent on
endif

" Highlight search terms...
"this is causing an annoying artifact..
set hlsearch
set incsearch " ...dynamically as they are typed.
set visualbell
noremap <Leader>t :%!perltidy -q<CR>\
noremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
