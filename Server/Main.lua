--[[
  _____   _                                 _   _   _
 |_   _| (_)  _ __    _   _   ___          | \ | | | |
   | |   | | | '_ \  | | | | / __|         |  \| | | |    
   | |   | | | | | | | |_| | \__ \         | |\  | | |___ 
   |_|   |_| |_| |_|  \__,_| |___/  _____  |_| \_| |_____|
                                   |_____|
]]--

local FlatbedProps = {}

RegisterServerEvent("ti_flatbed:editProp")
AddEventHandler("ti_flatbed:editProp", function(VehicleId, ValueName, NewValue)
    if FlatbedProps[VehicleId] then
        if ValueName then
            FlatbedProps[VehicleId][ValueName] = NewValue
        else
            FlatbedProps[VehicleId] = nil
        end
    else
        FlatbedProps[VehicleId] = {
            Prop = NewValue,
            Status = false,
            Attached = nil
        }
    end
end)

RegisterServerEvent("ti_flatbed:getProp")
AddEventHandler("ti_flatbed:getProp", function(VehicleId)
    TriggerClientEvent("ti_flatbed:getProp", source, FlatbedProps[VehicleId])
end)

RegisterServerEvent("ti_flatbed:action")
AddEventHandler("ti_flatbed:action", function(VehicleId, Action)
    TriggerClientEvent("ti_flatbed:action", source, FlatbedProps[VehicleId], Action)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)

        for CurrentFlatbed, CurrentInfo in pairs(FlatbedProps) do
            if not DoesEntityExist(NetworkGetEntityFromNetworkId(CurrentFlatbed)) then
                DeleteEntity(NetworkGetEntityFromNetworkId(CurrentInfo.Prop))
                FlatbedProps[CurrentFlatbed] = nil
            end
        end
    end
end)

AddEventHandler("onResourceStop", function(ResName)
    if GetCurrentResourceName() == ResName then
        for CurrentFlatbed, CurrentInfo in pairs(FlatbedProps) do
            DeleteEntity(NetworkGetEntityFromNetworkId(CurrentInfo.Prop))
        end
    end
end)