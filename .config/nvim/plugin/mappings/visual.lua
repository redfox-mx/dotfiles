local vmap = require'redfox.maps'.mode('v')
local xmap = require'redfox.maps'.mode('x')

vmap('<', '<gv')
vmap('>', '>gv')
vmap('<S-Down>', 'yyp')

xmap('/', '/\\v')
xmap('?', '?\\v')

