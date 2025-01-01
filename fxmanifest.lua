fx_version 'cerulean'
game 'gta5'

server_script { 
    '@vrp/lib/utils.lua',
    'Lua/server.lua'
}
client_script 'Lua/client.lua'

ui_page 'Nui/index.html'

files {
    'Nui/*.*',
}