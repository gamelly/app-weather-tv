local Menu = {}
local Options = {}

function Options.load(std, data)
    data.ui_grid = std.ui.grid('1x2')
        :gap(25)
        :add(std.node.load('src/ui/components/Button.lua'))
        :add(std.node.load('src/ui/components/Button.lua'))
        :apply()

    data.ui_grid:get_item(1).data.label = 'Hora'
    data.ui_grid:get_item(1).data.size = 20
    data.ui_grid:get_item(2).data.label = 'Dia'
    data.ui_grid:get_item(2).data.size = 20
end

function Menu.load(std, data)
    local index = 1

    local grid = std.ui.grid('14x1')
        :add(std.node.load('src/ui/widgets/Wind.lua'))
        :add(Options, 2)
        :add(std.node.load('src/ui/widgets/Calendar.lua'))
        :add(std.node.load('src/ui/widgets/Calendar.lua'))
        :add(std.node.load('src/ui/widgets/Calendar.lua'))
        :add(std.node.load('src/ui/widgets/Calendar.lua'))
        :add(std.node.load('src/ui/widgets/Calendar.lua'))
        :add(std.node.load('src/ui/widgets/Calendar.lua'))
        :add(std.node.load('src/ui/widgets/Calendar.lua'))
        :add(std.node.load('src/ui/widgets/Calendar.lua'))
        :add(std.node.load('src/ui/section/CurrentTemp.lua'), 3)
        :apply()

    grid:get_item(11).data.label = 'Nesse momento'
    grid:get_item(11).data.size = 26
    
    while index <= 8 do
        grid:get_item(index + 2).data.pattern = string.format('put_%d_%%d_calendar', index)
        index = index + 1
    end

    grid:get_item(3).data.inverse = true
end
function Menu.draw(std, data)
    std.draw.color(0x2C292EFF)
    std.draw.rect(0, 0, 40, data.width, data.height)
    std.draw.image('assets/opening_background.png',0,-294)
end

return Menu
