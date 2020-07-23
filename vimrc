" ### ~/.vimrc
set nocompatible              " get rid of Vi compatibility mode. SET FIRST!
filetype indent plugin on     " filetype detection[ON] plugin[ON] indent[ON]
syntax enable                 " enable syntax highlighting (previously syntax on)
colorscheme tender            " set colorscheme tender elflord molokai panic 
set number                    " show line numbers
set path+=**                  "
set wildmenu                  " enable autocomplete menu
set spelllang=en_us           " enable spellcheck
set laststatus=2              " last window always has a statusline
set ruler                     " always show info along the bottom
set tabstop=2                 " tab spacing
set shiftwidth=2              " indent/outdent by 2 columns
set expandtab                 " use spaces instead of tabs
set softtabstop=2             " unify tabs
set autoindent                " auto-indent
set smartindent               "
set nowrap                    " disable word wrap
nnoremap ,GPL :r ~/.vim/snippets/gpl.sh<Return>
nnoremap Q gqip
nnoremap S :split<Return>
