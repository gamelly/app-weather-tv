local CurrentTemp = {}

function CurrentTemp.on_weather_api_response_day(std, data, api)
    local temperature = string.format("%.0f", api.current.temperature_2m)
    std.bus.emit('put_current_temperature', temperature)
end

return CurrentTemp
