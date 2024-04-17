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
        local Vehicle = Citizen.InvokeNative(0xAF35D0D2583051B0,GetHashKey(v.Model),v.Coords[1],v.Coords[2],v.Coords[3],v.Coords[4],false,false,true,false) -- CreateVehicle
        -- local Vehicle = Citizen.InvokeNative(0x214651FB1DFEBA89,GetHashKey(v.Model),v.Coords[1],v.Coords[2],v.Coords[3],v.Coords[4],false,false,true,0x7F2FF3A2,false) -- CreateDraftVehicle
        Citizen.InvokeNative(0x203BEFFDBE12E96A,Vehicle,v.Coords[1],v.Coords[2],v.Coords[3],v.Coords[4],0.0,0.0,0.0) -- SetEntityCoordsAndHeading
        table.insert(Vehicles, { vehicle = Vehicle })

        if v.Freeze then
            for _, v in pairs(Vehicles) do
                FreezeEntityPosition(v.vehicle, true)
            end
        end
    end
    Wait(7000)
end

if Config.DevMode then
    spawnVehicle()
else
    RegisterNetEvent("vorp:SelectedCharacter")
    AddEventHandler("vorp:SelectedCharacter",function()
        Wait(10000)
        spawnVehicle()
    end)
end

function destroyVehicle()
    for _, v in pairs(Vehicles) do
        Debug(GetHashKey(v.vehicle))
        DeleteVehicle(v.vehicle)
    end
    return true
end

AddEventHandler("onResourceStop",function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    destroyVehicle()
    Debug("All vehicle has been removed")
end)
