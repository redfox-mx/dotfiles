local g = vim.g

g.nvim_tree_show_icons = {
  git = 0,
	folders = 1,
	files = 1,
}

g.nvim_tree_root_folder_modifier = ':t' -- only show final name
g.nvim_tree_indent_markers = 1 -- show indent markers

g.nvim_tree_icons = {
  folder = {
    default = '', -- folder closed
    open = '',
    empty = '', -- folder empty
    empty_open = '',
    symlink = '', -- folder symlink
    symlink_open = '',
  }
}

local nvim_tree = require 'nvim-tree'
local tree_cb   = require'nvim-tree.config'.nvim_tree_callback
local custom_cb = require'redfox.nvimtree.util'.custom_callback

nvim_tree.setup({
  update_cwd = false,
  view = {
    side = 'right',
    auto_resize = true,
    mappings = {
      custom_only = true,
      list= {
        { key = { 'l', '<CR>' },  cb = tree_cb('edit')              },
        { key = 'i',              cb = tree_cb('preview')           },
        { key = 'h',              cb = tree_cb('close_node')        },
        { key = '<c-s>s',         cb = tree_cb('split')             },
        { key = '<c-s>j',         cb = custom_cb('split', 'down')   },
        { key = '<c-s>k',         cb = custom_cb('split', 'up')     },
        { key = '<c-v>v',         cb = tree_cb('vsplit')            },
        { key = '<c-v>h',         cb = custom_cb('vsplit', 'left')  },
        { key = '<c-v>l',         cb = custom_cb('vsplit', 'right') },
        { key = 'c',              cb = tree_cb('create')            },
        { key = 'D',              cb = tree_cb('remove')            },
        { key = 'r',              cb = tree_cb('rename')            },
        { key = 'd',              cb = tree_cb('cut')               },
        { key = 'y',              cb = tree_cb('copy')              },
        { key = 'p',              cb = tree_cb('paste')             },
        { key = 'L',              cb = tree_cb('cd')                },
        { key = 'h',              cb = tree_cb('close_node')        },
        { key = 'H',              cb = tree_cb('dir_up')            },
        { key = 'R',              cb = tree_cb('refresh')           },
        { key = 'q',              cb = tree_cb('close')             },
        { key = 'I',              cb = tree_cb('toggle_ignored')    },
      }
    }
  }
})
