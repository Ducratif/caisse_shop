fx_version 'cerulean'
game 'gta5'
loadscreen_manual_shutdown 'yes'

dependency 'discord_id'

shared_scripts {
    '@ox_lib/init.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/img/*.png'
}

client_scripts {
    'client.lua'
}

server_script {
    '@es_extended/imports.lua',
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}


lua54 'yes'
