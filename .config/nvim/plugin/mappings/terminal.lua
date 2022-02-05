local map = require'redfox.maps'.mode('t')

map('<Esc>', [[<C-\><C-n>]])
map('<C-h>', '<Esc><C-w>h', { noremap = false })
map('<C-j>', '<Esc><C-w>j', { noremap = false })
map('<C-k>', '<Esc><C-w>k', { noremap = false })
map('<C-l>', '<Esc><C-w>l', { noremap = false })
