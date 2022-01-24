--[[
  _____   _                                 _   _   _
 |_   _| (_)  _ __    _   _   ___          | \ | | | |
   | |   | | | '_ \  | | | | / __|         |  \| | | |    
   | |   | | | | | | | |_| | \__ \         | |\  | | |___ 
   |_|   |_| |_| |_|  \__,_| |___/  _____  |_| \_| |_____|
                                   |_____|
]]--

fx_version 'adamant'
game 'gta5'

author 'Tinus_NL'
description 'Tinus Flatbed'

client_scripts {
    -- Configuration
    'Config.lua',
    -- Code
    'Client/Main.lua'
}

server_scripts { 
    -- Configuration
    'Config.lua',
    -- Code
    'Server/Main.lua'
}

files {
    -- Props
    'stream/def_flatbed3_props.ytyp',
    -- Meta
    'Meta/*.meta'
}
data_file 'VEHICLE_METADATA_FILE' 'Meta/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'Meta/carvariations.meta'

data_file 'DLC_ITYP_REQUEST' 'stream/def_flatbed3_props.ytyp'
