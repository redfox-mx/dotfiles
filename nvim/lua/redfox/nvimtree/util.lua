local opt = vim.opt
local nvimtree = require 'nvim-tree'

local M = {}

local function split(direction)
  local save_opt = opt.splitbelow:get()
  if direction == 'up' then
    opt.splitbelow = false
  elseif direction == 'down' then
    opt.splitbelow = true
  end

  nvimtree.on_keypress('split')
  opt.splitbelow = save_opt
end

local function vsplit(direction)
  local save_opt = opt.splitright:get()
  if direction == 'left' then
    opt.splitright = false
  elseif direction == 'right' then
    opt.splitright = true
  end

  nvimtree.on_kepress('vsplit')
  opt.splitright = save_opt
end

local keypress_funcs = {
  split = split,
  vsplit = vsplit
}

function M.on_keypress(mode, option)
  if keypress_funcs[mode] then
    return keypress_funcs[mode](option)
  end
end

function M.custom_callback(mode, options)
  return string.format(":lua require'redfox.nvimtree.util'.on_keypress('%s','%s')<CR>",
    mode, options or '')
end


return M

