local lib = require'nvim-tree.lib'

local Actions = {}

function Actions.print_node()
  print(vim.inspect(lib.get_node_at_cursor()))
end


return Actions
