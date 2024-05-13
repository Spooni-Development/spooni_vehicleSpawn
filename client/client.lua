local Vehicles = {}

function Debug(...)
    if Config.DevMode then
        print(...)
    end
end

function loadModel(model)
    local model = GetHashKey(model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(100)
    end
end

function spawnVehicle()
    for _, v in pairs(Config.Vehicles) do
        loadModel(v.Model)
        local Vehicle = Citizen.InvokeNative(0xAF35D0D2583051B0, GetHashKey(v.Model), v.Coords[1], v.Coords[2],
            v.Coords[3], v.Coords[4], false, false, true, false)                                                                                            -- CreateVehicle
        Citizen.InvokeNative(0x203BEFFDBE12E96A, Vehicle, v.Coords[1], v.Coords[2], v.Coords[3], v.Coords[4], 0.0, 0.0,
            0.0)                                                                                                                                            -- SetEntityCoordsAndHeading
        table.insert(Vehicles, { vehicle = Vehicle })

        if v.Freeze then
            for _, v in pairs(Vehicles) do
                FreezeEntityPosition(v.vehicle, true)
            end
        end
    end
    Wait(7000)
end

if Config.Framework == 'vorp' then
    RegisterNetEvent("vorp:SelectedCharacter")
    AddEventHandler("vorp:SelectedCharacter", function()
        Debug("VORP: Carriages spawned")
        Wait(10000)
        spawnVehicle()
    end)
elseif Config.Framework == 'rsg' then
    RegisterNetEvent('RSGCore:Client:OnPlayerLoaded', function()
        Debug("RSG: Carriages spawned")
        Wait(10000)
        spawnVehicle()
    end)
elseif Config.Framework == 'rpx' then
    RegisterNetEvent("CLIENT:RPX:PlayerLoaded", function()
        Debug("RPX: Carriages spawned")
        Wait(10000)
        spawnVehicle()
    end)
elseif Config.Framework == 'qbr' then
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        Debug("QBR: Carriages spawned")
        Wait(10000)
        spawnVehicle()
    end)
elseif Config.Framework == 'redem' then
    RegisterNetEvent('redemrp_charselect:SpawnCharacter', function()
        Debug("REDEM: Wagons spawned")
        Wait(10000)
        spawnWagons()
    end)
end

function destroyVehicle()
    for _, v in pairs(Vehicles) do
        Debug(GetHashKey(v.vehicle))
        DeleteVehicle(v.vehicle)
    end
    return true
end

AddEventHandler("onResourceStop", function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    destroyVehicle()
    Debug("All vehicle has been removed")
end)
