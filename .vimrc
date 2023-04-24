"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/mkaigawa/.cache/dein/repos/github.com/Shougo/dein.vim

" install
"let $CACHE = expand('~/.cache')
"if !isdirectory($CACHE)
"      call mkdir($CACHE, 'p')
"endif
"if &runtimepath !~# '/dein.vim'
"  let s:dein_dir = fnamemodify('dein.vim', ':p')
"  if !isdirectory(s:dein_dir)
"    let s:dein_dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
"    if !isdirectory(s:dein_dir)
"      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
"    endif
"  endif
"  execute 'set runtimepath^=' .. substitute(
"      \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
"endif

" Required:
if dein#load_state('/Users/mkaigawa/.cache/dein')

  " Let dein manage dein
  call dein#begin('/Users/mkaigawa/.cache/dein')
  " Required:
  call dein#add('/Users/mkaigawa/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('tomtom/tcomment_vim')
  call dein#add('itchyny/lightline.vim')

  " colorscheme
  call dein#add('vim-scripts/darktango.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" settings
colorscheme darktango
highlight Normal ctermbg=none
set t_Co=256

scriptencoding utf-8
set encoding=utf-8

set tags=~/.tags
set noswapfile
set nobackup
set ruler
set cmdheight=2
set laststatus=2
set title
set wildmenu
set showcmd
set nowrap

set browsedir=buffer
set smartcase
set nohlsearch
set incsearch
set hidden
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set whichwrap=b,s,h,l,<,>,[,]
set visualbell t_vb=
set noerrorbells

" line
set number relativenumber
nnoremap <F3> :<C-u>setlocal relativenumber!<CR>
set showmatch
set virtualedit=onemore
set smartindent

set list
set listchars=tab:▸\ ,trail:-,nbsp:%
hi NonText guibg=NONE guifg=DarkGreen

highlight LineNr ctermfg=darkyellow

nnoremap j gj
nnoremap k gk
noremap <S-h> ^
noremap <S-l> $
nnoremap ; :
nnoremap : ;
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>

" lightline
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'mode_map': {'c': 'NORMAL'},
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
  \ },
  \ 'component_function': {
  \   'fileformat': 'LightlineFileformat',
  \   'filetype': 'LightlineFiletype',
  \   'fileencoding': 'LightlineFileencoding',
  \   'mode': 'LightlineMode'
  \ }
\ }

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

