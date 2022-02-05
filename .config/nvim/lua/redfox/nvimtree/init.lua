
local M = {}


function M.lua_command(c)
  return string.format(':lua %s<cr>',c)
end

function M.action(a)
  return M.lua_command(
    string.format("require'redfox.nvimtree.actions'.%s()", a))
end

return M
