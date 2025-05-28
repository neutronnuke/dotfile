set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
set nocompatible
"filetype off
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set spelllang=en_us
set backspace=indent,eol,start
set grepprg=grep\ -nH\ $*

set autoindent
set noshowmode
set encoding=UTF-8
set t_Co=256
set showmatch
set clipboard=unnamedplus
set linebreak
set ignorecase
set smartcase
set hlsearch
set incsearch
set mouse=a
set termguicolors
set background=dark


highlight Comment cterm=italic
highlight SpellBad ctermbg=Red
highlight SpellCap cterm=NONE ctermbg=NONE
highlight SpellRare cterm=NONE ctermBG=NONE
highlight SpellLocal cterm=Underline ctermbg=NONE

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'sheerun/vim-polyglot'
	Plugin 'ap/vim-css-color'
	Plugin 'dracula/vim', { 'name': 'dracula' }
	Plugin 'Yggdroot/indentLine'
	Plugin 'elkowar/yuck.vim'
	Plugin 'chriskempson/base16-vim'
	Plugin 'morhetz/gruvbox'
	Plugin 'arcticicestudio/nord-vim'
	Plugin 'fxn/vim-monochrome'
	Plugin 'mangeshrex/everblush.vim'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'rebelot/kanagawa.nvim'
	Plugin 'catppuccin/vim', { 'as': 'catppuccin' }
	Plugin 'fladson/vim-kitty'
	Plugin 'imsnif/kdl.vim'
call vundle#end()
filetype plugin indent on
syntax enable
let g:tex_flavor = "latex"
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_fileTypeExclude = ['markdown']

let g:yuck_align_multiline_strings = 1

"let g:airline_theme="base16_adwaita"
"let g:dracula_italic = 1
"let g:dracula_underline = 1
"let g:dracula_bold = 1
colorscheme dracula

call togglebg#map("<F5>")

" restore cursor position when opening file
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif
