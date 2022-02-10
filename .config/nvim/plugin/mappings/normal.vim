nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap H 0
nnoremap L <End>
nnoremap <C-t> :split<CR>:term<CR>i

nnoremap wr :w<CR>
nnoremap <F10> :lua require'redfox.syntax'.currentSyntaxGroup()<CR>

nnoremap <Space>d :Bdelete<CR>
nnoremap <Space>s :Bwipeout<CR>
nnoremap <Space>x :BufOnly<CR>

nnoremap <silent><Space>l :BufferLineCycleNext<CR>
nnoremap <silent><Space>h :BufferLineCyclePrev<CR>

nnoremap <silent><M-l> :BufferLineMoveNext<CR>
nnoremap <silent><M-h> :BufferLineMovePrev<CR>
