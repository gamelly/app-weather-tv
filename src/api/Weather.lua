local WeatherApi = {}
local base_url = 'https://api.open-meteo.com/v1/forecast'

local function weather_day(std, data)
    std.bus.emit('on_weather_api_response_day', std.http.body)
end

local function weather_week(std, data)
    std.bus.emit('on_weather_api_response_week', std.http.body)
end

function WeatherApi.init(std, data)
    std.http.get(base_url):json()
        :param('latitude', '-23.5489')
        :param('longitude', '-46.6388')
        :param('current', 'is_day,temperature_2m')
        :param('timeformat','unixtime')
        :param('forecast_days', '1')
        :success(weather_day)
        :run()
end

return WeatherApi
