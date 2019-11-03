"--------------------------- "
" Start Neobundle Settings.  "
"--------------------------- "
set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'spolu/dwm.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'prabirshrestha/vim-lsp'
" NeoBundle 'skanehira/docker.vim'
" NeoBundle 'skanehira/docker-compose.vim'

" Track the engine.
NeoBundle 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
NeoBundle 'honza/vim-snippets'

NeoBundle 'gabrielelana/vim-markdown'

" colorscheme
NeoBundle 'vim-scripts/darktango.vim'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

"--------------------------- "
" End  Neobundle Settings.   "
"--------------------------- "
syntax on

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


"---- vim-go ----
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_version_warning = 0
let g:go_fmt_autosave = 0

"---- UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

