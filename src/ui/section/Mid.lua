local Mid = {}

function Mid.load(std, data)
    local grid = std.ui.grid('5x2')
        :margin(50)
        :add(std.node.load('src/ui/widgets/BigDay.lua'))
        :add(std.node.load('src/ui/widgets/BigDay.lua'))
        :apply()

    local temp = grid:get_item(1)
    temp.data.labels = {'00', '\194\186C'}
    temp.data.listeners = {'put_current_temperature'}

    local wmo = grid:get_item(2)
    wmo.data.fonts = {'Weather'}
    wmo.data.labels = {'.'}
    wmo.data.listeners = {'put_current_icon_wmo'}
end

return Mid
