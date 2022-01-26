local uv = vim.loop
local fn = vim.fn
local g = vim.g

local function exists(name)
  return uv.fs_stat(name) or false
end

local function exec(command)
  vim.cmd(string.format('silent execute \'!%s\'', command))
end

local Installer = {}

function Installer:new(o)
  local mt = {
    __index = function ()
      return function() return false end
    end,
    __newindex = function(t, k, v)
      if type(v) ~= 'function' then error('Installer option must be a function', 2) end
    end
  }

  return setmetatable(o, mt)
end

function Installer:add(installer, value)
  if type(installer) == 'table' then
    for k, v in pairs(installer) do
      self[k] = v
    end
  else
    self[installer] = value
  end
end


local M = {}

local installers = Installer:new({
  linux = function (path, remote)
    local c = string.format('curl -fLo %s --create-dirs %s', path, remote)
    local status = pcall(exec, c)
    return status
  end,
  windows = function (path, remote)
    local c = string.format('iwr -useb %s | ni %s -Force', remote, path)
    local status = pcall(exec, c)
    local status
  end,
  auto = function (path, remote)
    local c = ''
    if fn.has('win32') == 1 then
      c = string.format('iwr -useb %s | ni %s -Force', remote, path)
    else
      c = string.format('curl -fLo %s --create-dirs %s', path, remote)
    end
    local status = pcall(exec, c)
    return status
  end
})

function M.install(key)
  local path = fn.stdpath('data') .. '/site/autoload/plug.vim'

  if fn.has('win32') == 1 then
    path = string.gsub(file, '/', '\\')
  end
  local remote = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

  if type(key) == 'function' then
    return key(path, remote)
  else
    local inst = installers[key]
    return inst(path, remote)
  end
end

local plist = {}
function M.use(p)
  plist[#plist + 1] = p
end


function M.load()
  local plug = fn['plug#']
  for _, v in ipairs(plist) do
    if type(v) == 'table' then plug(unpack(v)) else plug(v) end
  end
end

function M.start()
  vim.call('plug#begin')
end

function M.finish()
  vim.call('plug#end')
end


function M.setup(setup)
  setfenv(setup, vim.tbl_extend('force', getfenv(), { use = M.use }))
  local status, result = pcall(setup, M.use)

  local config = result or {}
  local installed = exists(fn.stdpath('data') .. '/site/autoload/plug.vim')
  if not installed and config.install then
    installed = M.install(config.install)
  end

  if installed then
    M.start()
    M.load()
    M.finish()
    if config.on_load then
      config.on_load(g.plugs)
    end
  end
end

return M
