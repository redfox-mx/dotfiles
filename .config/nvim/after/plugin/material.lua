require('material').setup {
  contrast = {
    floating_windows = true,
    sign_colum = true,
  },
  italics = {
    comments = true,
    functions = true
  },
  high_visibility = {
    lighter = true
  },
}

vim.g.material_style = 'palenight'
vim.cmd('colorscheme material')
