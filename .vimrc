set fenc=utf-8
set number
set ruler
set showmatch
set autoindent
inoremap <silent> jj <Esc>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
set expandtab
set tabstop=4
set shiftwidth=4
syntax on



"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
" Required:
set runtimepath+=/home/yuto/.vim/repos/github.com/Shougo/dein.vim
" Required:
if dein#load_state('/home/yuto/.vim')
  call dein#begin('/home/yuto/.vim')
  " Let dein manage dein
  " Required:
  call dein#add('/home/yuto/.vim/repos/github.com/Shougo/dein.vim')
  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('tomasr/molokai')
  call dein#add('vim-airline/vim-airline')
  call dein#add('osyo-manga/vim-watchdogs')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('Lokaltog/vim-powerline')
  call dein#add('airblade/vim-gitgutter')

  let g:dein_dir = expand('~/.vim/dein')
  let s:toml = g:dein_dir . '/dein.toml'
  let s:lazy_toml = g:dein_dir . '/dein_lazy.toml'
  " TOMLファイルにpluginを記述
  call dein#load_toml(s:toml, {'lazy': 0}) 
  call dein#load_toml(s:lazy_toml, {'lazy': 1}) 

  " You can specify revision/branch/tag.
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



command! AirlineRefresh call airline#load_theme() | call airline#update_statusline() | call airline#load_theme() | call airline#update_statusline()
autocmd FileType python setlocal completeopt-=preview
colorscheme molokai
let g:indent_guides_enable_on_vim_startup = 1
let g:molokai_original = 1
set ts=4 sw=4 et
let g:indent_guides_start_lecel = 2
let g:indent_guides_guide_size = 1

