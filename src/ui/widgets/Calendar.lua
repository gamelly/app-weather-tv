local Calendar = {}

function Calendar.load(std, data)
    local color = data.inverse and std.color.darkgray
    data.ui_grid = std.ui.grid('1x3')
        :add(std.node.load('src/ui/components/TextSimple.lua'))
        :add(std.node.load('src/ui/components/TextSimple.lua'))
        :add(std.node.load('src/ui/components/TextSimple.lua'))
        :apply()

    data.icon = data.ui_grid:get_item(1)
    data.icon.data.color = color
    data.icon.data.font = 'Weather'
    data.icon.data.label = '\238\152\151'
    data.icon.data.size = 36
    data.icon.data.center_x = true
    data.icon.data.center_y = true

    data.text1 = data.ui_grid:get_item(2)
    data.text1.data.color = color
    data.text1.data.label = '12pm'
    data.text1.data.size = 16
    data.text1.data.center_x = true
    data.text1.data.center_y = true
    
    data.text2 = data.ui_grid:get_item(3)
    data.text2.data.color = color
    data.text2.data.label = '30c'
    data.text2.data.size = 16
    data.text2.data.center_x = true
    data.text2.data.center_y = true
end

function Calendar.draw(std, data)
    if data.inverse then
        std.draw.color(0xFFFFFF99)
        std.draw.rect(0, 0, 0, data.width, data.height)
    end
end

return Calendar
