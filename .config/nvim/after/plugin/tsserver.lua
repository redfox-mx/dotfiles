local Server = require'redfox.custom_server'

Server.tsserver:setup {
  cmd = { 'typescript-language-server', '--stdio' }
}
