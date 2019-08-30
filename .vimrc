" Nice to have
syntax enable

set shell=/bin/bash

" show statusbar
set laststatus=2

"For indents that consist of 4 space characters 
"but are entered with the tab key
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle

Plugin 'Vundlevim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'surround.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Yggdroot/indentLine'
Plugin 'altercation/vim-colors-solarized'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'Shougo/vimproc.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set number " show line numbers
set incsearch " search as characters are enter
set hlsearch " highlight matches 

let NERDTreeShowHidden=1
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

"FINDING FILES:

"Search down into subfolders
"Provides tab-completion for all file-related tasks
set path+=**

"Display all matching files when we tab complete
set wildmenu

"NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

"THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

"TAG JUMPING:

"Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

"NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

"THINGS TO CONSIDER:
" - This doesn't help if you  want a visual list of tags

" AUTOCOMPLETE:

"The good stuff is documented in |ins-completion|

"HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^} for tags only
" - ^n for anything specified by the 'complete' option

"NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list

"FILE BROWSING:

"Tweaks for browsing
let g:netrw_banner=0			"disable annoying banner
let g:netrw_browse_split=4		"open in prior window
let g:netrw_altv=1			"open splits to the right
let g:netrw_liststyle=3			"tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

"SNIPPETS:

"Read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>6jwf>a

"NOW WE CAN:
" - Take over the world!
"  (with much fewer keystrokes)

:imap jj <Esc>

set viminfo='1000,f1,<500

let g:mta_filetypes = { 'html':1, 'xhtml':1, 'xml':1, 'php':1, 'ejs':1, 'javascript.jsx':1}

"Settings for typescript error loggin
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"Settings for pretty-templates
autocmd FileType typescript JsPreTmpl
autocmd FileType typescript syn clear foldBraces

"Toggle on and off if you want transparent background on Vim
"hi Normal guibg=NONE ctermbg=NONE
