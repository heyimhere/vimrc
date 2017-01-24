" Nice to have
syntax on

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

call vundle#end()
filetype plugin indent on

set number " show line numbers
set incsearch " search as characters are enter
set hlsearch " highlight matches 
let NERDTreeShowHidden=1
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
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>4jwf>a

"NOW WE CAN:
" - Take over the world!
"  (with much fewer keystrokes)


