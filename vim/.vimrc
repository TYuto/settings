set fenc=utf-8 
syntax on
set number
set ruler
set autoindent
inoremap <silent> jj <Esc>
vnoremap  <Up>     <nop>
vnoremap  <Down>   <nop>
vnoremap  <Left>   <nop>
vnoremap  <Right>  <nop>
inoremap  <Up>     <nop>
inoremap  <Down>   <nop>
inoremap  <Left>   <nop>
inoremap  <Right>  <nop>
noremap   <Up>     <nop>
noremap   <Down>   <nop>
noremap   <Left>   <nop>
noremap   <Right>  <nop>
set expandtab
set tabstop=4
set shiftwidth=4


if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim')
  call dein#begin('~/.vim/')
  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/repos/github.com/Shougo/dein.vim')
  let g:dein_dir = expand('~/.vim/dein')
  let s:toml = g:dein_dir . '/dein.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
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


autocmd FileType python setlocal completeopt-=preview
colorscheme molokai
let g:indent_guides_enable_on_vim_startup = 1
let g:molokai_original = 1
set ts=4 sw=4 et
let g:indent_guides_start_lecel = 2
let g:indent_guides_guide_size = 1


highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 
