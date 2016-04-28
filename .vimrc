execute pathogen#infect()
syntax on
syntax enable

filetype plugin indent on
set smartindent
set laststatus=2
set nu
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

" tabline
set tabline=%!tabber#TabLine()

nnoremap <F3> :CtrlP<CR>
set noswapfile

map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3
com! FormatJSON %!python -m json.tool
nnoremap <C-m> :CtrlP<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Vim multi cursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

set pastetoggle=<F1>

set background=light
let g:solarized_termcolors=256
colorscheme solarized

