fx_version 'cerulean'
game 'gta5'
this_is_a_map 'yes'
lua54 'yes' 
-- Download Door Audio and Door Tuning at https://github.com/Heleniust/helnius-map-data
author 'helnius' -- Discord: https://discord.gg/RGgqnsxvMv, Tebex: https://store.helnius.com/
description 'Alta station, Los Santos Police Department' 
version '1.1.1-release'

escrow_ignore {
    'config.lua',
    'client.lua',
    'stream/INT/Non-Escrowed/*.*',
    'stream/EXT_hw1_27/Non-Escrowed/*.*'
}

client_scripts {
    'config.lua',
    'client.lua'
}

file 'stream/AUDIO/h_int_alta_polstation_game.dat151.rel'
data_file 'AUDIO_GAMEDATA' 'stream/AUDIO/h_int_alta_polstation_game.dat'
dependency '/assetpacks'