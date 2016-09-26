execute pathogen#infect()
syntax on
syntax enable

filetype on
filetype plugin indent on
set smartindent
set laststatus=2
set nu
set tabstop=2
set shiftwidth=2
set wrapmargin=0
set autoindent
set expandtab
set visualbell
set clipboard=unnamed
set mouse=a



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


" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" " Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
   " For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
  "   " <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  "   inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  "   " Close popup by <Space>.
  "   "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
