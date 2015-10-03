set nocompatible "Use only new stuff :)
call pathogen#infect() "Add Pathogen package manager

"
" http://nvie.com/posts/how-i-boosted-my-vim/
"
" Basic stuff
set nowrap                      " don't wrap lines
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
"set autoindent                  " always set autoindenting on
"set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

colorscheme fruit

"Use CtrlP for file management
set runtimepath^=~/.vim/bundle/ctrlp.vim 
set nocp
runtime! plugin/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.exe,*.so,*.dat
let g:ctrlp_user_command = "find %s -type f | egrep -v '/.(git|hg|svn)|solr|vendor|tmp/' | egrep -v '. (png|exe|jpg|gif|jar|class|swp|swo|log|gitkep|keepme|so|o)$'"

" Spaces are better than tabs
set tabstop=4                   " a tab is four spaces
set shiftwidth=4                " number of spaces to use for autoindenting
set expandtab

" markdown
let g:vim_markdown_folding_disabled=1

" vim-airline
set laststatus=2
set timeoutlen=50
let g:airline_powerline_fonts = 1
set noshowmode

" vim-ansible-yaml
let g:ansible_options = {'ignore_blank_lines': 0}
