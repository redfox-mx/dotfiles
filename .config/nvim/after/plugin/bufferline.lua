require("bufferline").setup {
  options = {
    numbers = 'none',
    diagnostics = 'nvim_lsp',
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return ' ' .. count
    end,
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'File Explorer',
        highlight = 'Directory',
        text_align = 'left'
      }
    }
  }
}
