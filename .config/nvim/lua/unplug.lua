local uv = vim.loop
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g

local remote = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

local mt = {}

function mt:__call(opt)
  local load = fn['plug#']
  if type(opt) == 'table' then
    load(unpack(opt))
  elseif opt and type(opt) == 'string' then
    load(opt)
  end
end

local M = {}
local DEFAULT_CONFIG = {
  autoinstall = true,
}

local function isInstalled ()
  local path = fn.stdpath 'data' .. '/site/autoload/plug.vim'
  path = string.gsub(path, '\\', '/')
  return uv.fs_stat(path) or false
end

local hasVimplug = false
function M.start(config)
  local install = function ()
    if fn.has 'win32' == 1 then
      cmd(string.format('silent !curl -fLo %s --create-dirs %s', path, remote))
    else
      cmd(string.format('silent !iwr -useb %s | ni %s -Force', remote, path))
    end
  end

  config = vim.tbl_extend('keep', config or {}, DEFAULT_CONFIG)
  hasVimplug = isInstalled()
  if not hasVimplug and config.autoinstall then
    hasVimplug = pcall(install)
  end

  if not hasVimplug then return end
  vim.call('plug#begin')
end

function M.finish()
  if not hasVimplug then return end
  vim.call('plug#end')
end

return setmetatable(M, mt)
