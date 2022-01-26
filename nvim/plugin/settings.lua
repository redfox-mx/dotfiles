local opt = vim.opt
local cmd = vim.cmd
local env = vim.env
local g = vim.g

opt.fillchars = { -- Characters to be used in various user-interface elements.
  stl = ' ', -- Status-line of the current window.
  stlnc = ' ', -- Status-line of the non-current windows.
  vert = '▏', -- Vertical separator to be used with :vsplit.
  msgsep = '─', -- Message separator for 'display' option.
  eob = ' ', -- Empty lines at the end of a buffer.
}

opt.number = true
