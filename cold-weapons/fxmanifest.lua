fx_version 'cerulean'
game 'gta5'

author 'Cold RP Custom Damage'
description 'COLD RP'
version 'v1'


-- Meta-Dateien angeben
files {                         -- Standard Weapon Meta

    'stream/weapons.meta',  
    'stream/mk2/*.meta',
    'stream/normal/*.meta',
    'stream/special/*.meta',     -- Alternativer Name
}

-- Die Daten als Meta laden

data_file 'WEAPONINFO_FILE_PATCH'  'stream/**/*.meta' -- Falls du mehrere hast
