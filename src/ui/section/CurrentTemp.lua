
local CurrentTemp = {}

function CurrentTemp.load(std, data)
    local grid = std.ui.grid('2x2')
        :margin(50)
        :add(std.node.load('src/ui/elements/TextSimple.lua'),2)
        :add(std.node.load('src/ui/widgets/BigDay.lua'))
        :add(std.node.load('src/ui/widgets/BigDay.lua'))
        :apply()

    local node = grid:get_item(1)
    node.data.size = data.size
    node.data.label = data.label
    node.data.center_x = true

    local temp = grid:get_item(2)
    temp.data.labels = {'00', '\194\186C'}
    temp.data.listeners = {'put_current_temperature'}
    temp.data.int_padding = 20
    temp.data.info_padding_x = 70

    local wmo = grid:get_item(3)
    wmo.data.fonts = {'Weather'}
    wmo.data.labels = {'.'}
    wmo.data.listeners = {'put_current_icon_wmo'}
    wmo.data.int_padding = 30
end


-- function CurrentTemp.draw(std, data)
--     std.draw.color(0x2C292EFF)
--     std.draw.rect(0, 0, 0, data.width, data.height)
-- end

return CurrentTemp
