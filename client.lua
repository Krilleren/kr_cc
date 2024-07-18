RegisterCommand(Config.CommandName, function(source, args, rawCommand)
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local maxSpeed = tonumber(args[1])

    if vehicle and vehicle ~= 0 then
        if maxSpeed then
            SetVehicleMaxSpeed(vehicle, maxSpeed / 3.6)
            lib.notify({
                description = string.format(Config.Messages.success, args[1]),
                type = 'success'
            })
        else
            lib.notify({
                description = Config.Messages.invalidSpeed,
                type = 'error'
            })
        end
    else
        lib.notify({
            description = Config.Messages.notInVehicle,
            type = 'inform'
        })
    end
end, false)
