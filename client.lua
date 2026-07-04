Citizen.CreateThread(function()
    for i = 1, 15 do
        EnableDispatchService(i, false)
    end

    SetCreateRandomCops(false)
    SetCreateRandomCopsNotOnScenarios(false)
    SetCreateRandomCopsOnScenarios(false)
    SetGarbageTrucks(false)
    SetRandomBoats(false)

    while true do
        Citizen.Wait(0)

        SetPedDensityMultiplierThisFrame(0.0)
        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
        SetVehicleDensityMultiplierThisFrame(0.0)
        SetRandomVehicleDensityMultiplierThisFrame(0.0)
        SetParkedVehicleDensityMultiplierThisFrame(0.0)
        
        SetFarDrawVehicles(false)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local success, ped = FindFirstPed()
        local handle = success
        local finished = false
        
        if success then
            repeat
                if DoesEntityExist(ped) and not IsPedAPlayer(ped) then
                    SetEntityAsMissionEntity(ped, true, true)
                    DeletePed(ped)
                end
                finished, ped = FindNextPed(handle)
            until not finished
            EndFindPed(handle)
        end

        local successVeh, veh = FindFirstVehicle()
        local handleVeh = successVeh
        local finishedVeh = false

        if successVeh then
            repeat
                if DoesEntityExist(veh) then
                    if GetVehicleNumberOfPassengers(veh) == 0 and IsVehicleSeatFree(veh, -1) then
                        SetEntityAsMissionEntity(veh, true, true)
                        DeleteVehicle(veh)
                    end
                end
                finishedVeh, veh = FindNextVehicle(handleVeh)
            until not finishedVeh
            EndFindVehicle(handleVeh)
        end
    end
end)