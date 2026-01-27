set expandtab
"set smarttab
set tabstop=4
set softtabstop=4
"set shiftwidth=4
set number
set foldcolumn=2

nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
