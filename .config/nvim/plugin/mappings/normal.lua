local map = require 'redfox.maps'.mode('n')

-- motion windows
map('<C-h>', '<C-w>h')
map('<C-j>', '<C-w>j')
map('<C-k>', '<C-w>k')
map('<C-l>', '<C-w>l')


-- motion lines
map('H', '0')
map('L', '<End>')

-- terminal
map('<C-t>', ':split<CR>:term<CR>i')


-- text
map('<S-Down>', 'yyp')
map('<S-Up>', 'yyP')
map('wr', ':w<CR>')

-- schema
map('mm', ":lua require'material.functions'.toggle_style()<CR>")

map('<F10>', ":lua require'redfox.syntax'.currentSyntaxGroup()<CR>")
