set hidden              " hide buffers rather than closing
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase
set scrolloff=3         " prefer at least 3 lines beneath cursor
set ruler               " enable ruler
set backspace=indent,eol,start " Intuitive backspacing in insert mode
set nowrap              " no line auto line wrap
set expandtab           " expand tabs to spaces
set shiftwidth=4        " number of columns to indent
set shiftround          " rounds shift indents
set nojoinspaces        " don't add spaces when joining
set t_Co=256            " enable 256 colors
"colorscheme molokai
"colorscheme mustang
"colorscheme wombat
"colorscheme distinguished
"colorscheme grb256
"colorscheme acidcupcake
"colorscheme sumi
colorscheme Tomorrow-Night-Eighties
set background=dark
highlight Pmenu ctermfg=0 ctermbg=3
highlight PmenuSel ctermfg=0 ctermbg=7

if &bg == "dark"
    highlight MatchParen ctermbg=darkblue guibg=blue
endif

"Highlight the 81st column
highlight ExtraWhitespace ctermbg=yellow guibg=yellow
call matchadd('ExtraWhitespace', '\s\+$\| \+\ze\t', 100)
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
set hlsearch
set incsearch " ...dynamically as they are typed.
set visualbell

noremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
noremap <F3> : %!perltidy -q<CR>
" remove trailing whitespace
noremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" filetype spacing preferences
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
