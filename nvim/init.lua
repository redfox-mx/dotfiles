local fn    = vim.fn
local opt   = vim.opt
local cmd   = vim.cmd
local g     = vim.g

require'plug'.setup(function()

  -- theme
  use { 'challenger-deep-theme/vim', { as = 'challenger-deep' } }
  use 'sainnhe/everforest'
  use 'joshdick/onedark.vim'
  use { 'embark-theme/vim', { as = 'embark', branch = 'main' } }

  -- editor
  use 'editorconfig/editorconfig-vim'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'marko-cerovac/material.nvim'

  -- syntax
  use 'euclidianAce/BetterLua.vim'

  -- language server protocol
  use 'neovim/nvim-lspconfig'

  -- completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- snippet
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'


  local function update(plugs)
    for _, v in pairs(plugs) do
      if not vim.loop.fs_stat(v.dir) then
        vim.cmd(
          'autocmd VimEnter *  PlugInstall --sync | source ' .. fn.expand('<sfile>'))
        return true
      end
    end
    return false
  end

  return {
    install = 'auto',
    on_load = function(plugs)
      if not update(plugs) then
        require'redfox'.sync {
          'nvimtree'
        }
      end
    end
  }
end)

if fn.has('termguicolors') == 1 then
  opt.termguicolors = true
end
g.material_style = 'palenight'
cmd('colorscheme material')
-- cmd('colorscheme embark')
-- cmd('colorscheme challenger_deep')
-- cmd('colorscheme everforest')
