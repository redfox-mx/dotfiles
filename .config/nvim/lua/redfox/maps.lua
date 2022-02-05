local api = vim.api
local map = {}

function map.mode(mode)
  return function (lhs, rhs, opts)
    local defaults = { noremap = true }

    for key, value in pairs(opts or {}) do
      defaults[key] = value
    end

    api.nvim_set_keymap(mode, lhs, rhs, defaults)
  end
end

return map
