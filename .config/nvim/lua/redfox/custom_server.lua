local uv = vim.loop
local stdpath = vim.fn.stdpath
local lspconfig = require'lspconfig'
local Path = lspconfig.util.path

local M = { dir = Path.join(stdpath 'config', 'servers') }

local mt = {}
function mt:__index(k)
  local server = {}
  function server:setup(config)
    local dir = config.dir or Path.join(M.dir, 'node_modules', '.bin')

    config.cmd[1] = Path.join(uv.fs_realpath(dir), config.cmd[1])
    config.dir = nil -- dir is not a valid setup option for lspconfig

    return lspconfig[k].setup(config)
  end

  return server
end


return setmetatable(M, mt)
