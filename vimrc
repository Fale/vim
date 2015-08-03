set nocompatible "Use only new stuff :)
call pathogen#infect() "Add Pathogen package manager

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
set tabstop=4
set shiftwidth=4
set expandtab

" markdown
let g:vim_markdown_folding_disabled=1

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1

" vim-ansible-yaml
let g:ansible_options = {'ignore_blank_lines': 0}
