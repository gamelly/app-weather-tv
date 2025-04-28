
local GeoLoc = {}
local places = {
    {'Guarulhos, SP, Brasil', -23.5489, -46.6388},
    {'Florianopolis, SC, Brasil', -27.5935, -48.5585},
    {'Porto Alegre, RS, Brasil', -30.0330, -51.2300}
}

function GeoLoc.init(std, data)
    local index = (os.time() % #places) + 1
    local place = places[index]
    std.bus.emit('put_gelocation_str', place[1])
    std.bus.emit('on_geolocation_init', place[2], place[3])
end

return GeoLoc
