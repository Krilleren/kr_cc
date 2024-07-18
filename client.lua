local currentMaxSpeed = 0

RegisterCommand(Config.CommandName, function(source, args, rawCommand)
    local action = tonumber(args[1])

    if action == nil then
        lib.notify({
            description = Config.Messages.invalidSpeed,
            type = 'error'
        })
        return
    end

    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

    if vehicle and vehicle ~= 0 then
        if action == 0 then
            currentMaxSpeed = Config.MaxSpeedWhenDisabled
            SetVehicleMaxSpeed(vehicle, currentMaxSpeed)
            lib.notify({
                description = Config.Messages.disabled,
                type = 'inform'
            })
        elseif action > 0 then
            currentMaxSpeed = action / 3.6
            SetVehicleMaxSpeed(vehicle, currentMaxSpeed)
            lib.notify({
                description = string.format(Config.Messages.success, action),
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
