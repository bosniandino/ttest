fx_version 'adamant'
lua54 'yes'
game 'gta5'

author 'Fousin'
description 'Carpack'
version '1.0.1'

files {
    "data/**/carcols.meta",
    "data/**/carvariations.meta",
    "data/**/handling.meta",
    "data/**/vehiclelayouts.meta",
    "data/**/vehicles.meta",
    "data/**/dlctext.meta",
    -- "sound/*.dat151.rel",
    -- "sound/*.dat54.rel",
    -- "sound/*.dat10.rel",
    -- "sound/*.dat.rel"
}

escrow_ignore {
  'stream/*.*'
}

data_file "HANDLING_FILE" "data/**/handling.meta"
data_file "VEHICLE_LAYOUTS_FILE" "data/**/vehiclelayouts.meta"
data_file "VEHICLE_METADATA_FILE" "data/**/vehicles.meta"
data_file "CARCOLS_FILE" "data/**/carcols.meta"
data_file "VEHICLE_VARIATION_FILE" "data/**/carvariations.meta"

dependency '/assetpacks'

-- Sound --
-- data_file 'AUDIO_GAMEDATA' 'sound/*.dat151.rel'
-- data_file 'AUDIO_SOUNDDATA' 'sound/*.dat54.rel'
-- data_file 'AUDIO_SYNTHDATA' 'sound/*.dat10.rel'
-- data_file 'AUDIO_WAVEPACK' 'sound/'
