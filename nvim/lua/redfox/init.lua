
local Config = {}


function Config.sync(mod)
  for _, v in ipairs(mod) do
    require('redfox.' .. v)
  end
end

return Config
