--[[
  _____   _                                 _   _   _
 |_   _| (_)  _ __    _   _   ___          | \ | | | |
   | |   | | | '_ \  | | | | / __|         |  \| | | |    
   | |   | | | | | | | |_| | \__ \         | |\  | | |___ 
   |_|   |_| |_| |_|  \__,_| |___/  _____  |_| \_| |_____|
                                   |_____|
]]--

Config = {}

Config.Keys = { -- https://docs.fivem.net/docs/game-references/controls/
    Lower = 173, -- Control | Key to lower the bed. Default: 173 (Arrow Down)
    Raise = 172, -- Control | Key to raise the bed. Default: 172 (Arrow Up)
    Attach_Detach = 47, -- Control | Key to Attach/Detach a vehicle to the bed. Default: 47 (G)
}

Config.Flatbeds = {
    {
        Hash = "flatbed3", -- String | Hash Of The Vehicle
        Marker = vector3(-1.85, 0.4, -1.2), -- X, Y, Z | Marker Location
        Attach = vector2(0.0, 1.0), -- X, Y | Attach/Weld Location
        Radius = 3.0, -- Integer | ClosestVehicle Radius
        Default = {
            Pos = vector3(0.0, -3.8, 0.35), -- X, Y(Runs Second), Z(Runs First) | Default Offset Position
            Rot = vector3(0.0, 0.0, 0.0) -- X, Y, Z | Default Rotation
        },
        Active = {
            Pos = vector3(0.0, -8.20, -0.75), -- X, Y(Runs First), Z(Runs Second) | Lowered Offset Position
            Rot = vector3(16.0, 0.0, 0.0) -- X, Y, Z | Lowered Rotation
        }
    }
}

Config.BedProp = "inm_flatbed_base" -- String | Hash Of The Bed Prop

Config.Translation = { -- String | Translations
    ["LOWER"] = "~INPUT_CELLPHONE_DOWN~ ~y~Lower~s~ Bed",
    ["RAISE"] = "~INPUT_CELLPHONE_UP~ ~y~Raise~s~ Bed",

    ["ATTACH"] = "~INPUT_DETONATE~ ~g~Attach~s~ Vehicle",
    ["DETACH"] = "~INPUT_DETONATE~ ~r~Detach~s~ Vehicle"
}