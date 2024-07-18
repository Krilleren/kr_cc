fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

author 'Krilleren'
description 'Simpelt cruise control script via "/cc"'
version '1.0.1'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}
