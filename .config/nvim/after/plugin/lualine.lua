
local diagnostics = {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = {error = '', warn = '', info = '', hint = ''},
}

local filename = {
  'filename',
  symbols = {
    modified = '',
    readonly = ' '
  }
}

local filetype = {
  'filetype',
  icon_only = true,
}

require('lualine').setup {
  options = {
    disabled_filetypes = { 'NvimTree' },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = { filename },
    lualine_x = { diagnostics, filetype },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = { filename },
    lualine_c = {},
    lualine_x = { filetype },
    lualine_y = {},
    lualine_z = {}
  },
}

