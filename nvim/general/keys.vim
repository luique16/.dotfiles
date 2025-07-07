tnoremap <Esc> <C-\><C-n>
nnoremap <silent><esc> :noh<return><esc>

nnoremap <DEL> v"_d<ESC>
vnoremap <DEL> "_d

vnoremap < <gv
vnoremap > >gv

vnoremap ( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap { <ESC>`>a}<ESC>`<i{<ESC>
vnoremap [ <ESC>`>a]<ESC>`<i[<ESC>
vnoremap <leader>< <ESC>`>a><ESC>`<i<<ESC>
vnoremap " <ESC>`>a"<ESC>`<i"<ESC>
vnoremap ' <ESC>`>a'<ESC>`<i'<ESC>

nnoremap Y y$

inoremap <C-Space> <Esc>
nnoremap <C-Space> <Esc>

nnoremap <leader>v v$
nnoremap <leader>V v0

nnoremap _ $

inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>

vnoremap <silent> <A-j> :m '>+1<CR>gv=gv
vnoremap <silent> <A-k> :m '<-2<CR>gv=gv
nnoremap <silent> <A-j> :m .+1<CR>==
nnoremap <silent> <A-k> :m .-2<CR>==

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <C-t> :terminal<CR>a

tnoremap <C-@> <Esc>

nnoremap <silent>M :call append(line('.')-1, '')<CR>
nnoremap <silent>m :call append(line('.'), '')<CR>

tnoremap <Esc> <C-c>
tnoremap <C-space> <C-c>
