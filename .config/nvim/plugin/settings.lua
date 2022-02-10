local opt = vim.opt
local cmd = vim.cmd
local env = vim.env
local g = vim.g

opt.laststatus = 0 -- Disable status-line.
opt.statusline = ' ' -- Disable built-in status-line string for splits.
opt.showmode = false
opt.fillchars = { -- Characters to be used in various user-interface elements.
  stl = ' ', -- Status-line of the current window.
  stlnc = ' ', -- Status-line of the non-current windows.
  vert = '▏', -- Vertical separator to be used with :vsplit.
  msgsep = '─', -- Message separator for 'display' option.
  eob = ' ', -- Empty lines at the end of a buffer.
}
opt.re = 0
opt.number = true
opt.relativenumber = true
opt.completeopt = { -- Options for insert mode completion.
  'menu', -- Use the pop-up menu.
  'menuone', -- Use the pop-up menu also when there is only one match.
  'noselect', -- Do not select a match in the menu.
}
opt.cursorline = true -- Highlight the screen line of the cursor with CursorLine.
opt.signcolumn = 'yes' -- Always draw the sign column even there is no sign in it.
opt.foldmethod = 'indent' -- Use indent folding method to fold lines.
opt.timeoutlen = 500 -- Time in milliseconds to wait for a mapped sequence to complete.
opt.updatetime = 500 -- Trigger CursorHold event faster.
opt.foldlevelstart = 99 -- Start editing with all folds open.
opt.foldopen = { -- Specifies for which type of commands folds will be opened.
  'hor', -- Horizontal movements: "l", "w", "fx", etc.
  'mark', -- Jumping to a mark: "'m", CTRL-O, etc.
  'percent', -- % key.
  'quickfix', -- ":cn", ":crew", ":make", etc.
  'tag', -- Jumping to a tag: ":ta", CTRL-T, etc.
  'undo', -- Undo or redo: "u" and CTRL-R.
}
