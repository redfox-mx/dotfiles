local Server = require 'redfox.custom_server'

Server.dockerls:setup {
  cmd = { "docker-langserver", "--stdio" }
}
