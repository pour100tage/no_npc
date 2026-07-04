AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    SetRoutingBucketPopulationEnabled(0, false)
    print("Resource started: https://github.com/pour100tage/no_npc")
end)