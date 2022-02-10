local Plug = require 'unplug'
if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end

Plug.start()

-- theme
Plug 'marko-cerovac/material.nvim'

-- editor
Plug 'editorconfig/editorconfig-vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'rafcamlet/nvim-luapad'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'famiu/bufdelete.nvim'
Plug 'vim-scripts/BufOnly.vim'

-- editor
Plug 'editorconfig/editorconfig-vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'rafcamlet/nvim-luapad'

-- syntax
Plug 'euclidianAce/BetterLua.vim'
Plug 'othree/yajs.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

-- language server protocol
Plug 'neovim/nvim-lspconfig'

-- completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- snippet
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug.finish()

--[[
require'plug'.setup(function()
      for _, v in pairs(plugs) do
        if not vim.loop.fs_stat(v.dir) then
          vim.cmd( 'autocmd VimEnter *  PlugInstall --sync | source ' ..
            vim.fn.expand('<sfile>'))
            return
        end
      end
    end
  }
end)
--]]

