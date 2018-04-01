set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'lervag/vimtex'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'mechatroner/rainbow_csv'

"all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype on

set wildmode=longest:list,full
set wildmenu

" enable syntax highlighting
syntax enable

" show line numbers
set number

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
" set showmatch
highlight MatchParen cterm=underline

" enable all Python syntax highlighting features
let python_highlight_all = 1

" enable supertab with jedivim completion
" let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" jk to esc 
imap jk <esc>
imap kj <esc>

" set shift+tab to be a tab literal
inoremap <S-Tab> <Tab>

" yaml tabs
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" tsv tabs
autocmd FileType tsv let b:SuperTabDisabled = 1
autocmd FileType tsv setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd FileType tsv imap <Tab> <Tab>

" python files
" indent when moving to the next line while writing code
" expand tabs into spaces
" when using the >> or << commands, shift lines by 4 spaces
" set tabs to have 4 spaces
autocmd FileType py setlocal autoindent, expandtab, shiftwidth=4, ts=4
autocmd FileType py map <F5> :w !python <enter>
