local fn = vim.fn
local synID = vim.fn.synID
local synIDattr = vim.fn.synIDattr
local synIDtrans = vim.fn.synIDtrans

local function format (hi, trans, lo)
  return string.format('hi< %s >, trans< %s >, lo< %s >', hi, trans, lo)
end

local M = {}

function M.currentSyntaxGroup()
  local hi = synIDattr(synID(fn.line('.'), fn.col('.'),1), 'name')
  local trans = synIDattr(synID(fn.line('.'), fn.col('.'), 0),'name')
  local lo = synIDattr(synIDtrans(synID(fn.line('.'), fn.col('.'),1)),'name')

  print(format(hi, trans, lo))
end

return M
