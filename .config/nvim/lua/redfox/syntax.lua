local fn = vim.fn
local synID = vim.fn.synID
local synIDattr = vim.fn.synIDattr
local synIDtrans = vim.fn.synIDtrans

local M = {}

function M.currentSyntaxGroup()
  local hi = synIDattr(synID(fn.line('.'), fn.col('.'),1), 'name')
  local trans = synIDattr(synID(fn.line('.'), fn.col('.'), 0),'name')
  local lo = synIDattr(synIDtrans(synID(fn.line('.'), fn.col('.'),1)),'name')
  vim.api.nvim_echo({
    { 'hi -> '     }, { hi == '' and 'NONE' or hi, hi },
    { ' | trans -> ' }, { trans == '' and 'NONE' or trans, trans },
    { ' | lo -> '    }, { lo == '' and 'NONE' or lo, lo }
  }, true, {})
end

return M
