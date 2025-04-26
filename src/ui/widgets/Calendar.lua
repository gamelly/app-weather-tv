local Calendar = {}

function Calendar.load(std, data)
    data.ui_grid = std.ui.grid('1x3')
        :add(std.node.load('src/ui/components/Image.lua'))
        :add(std.node.load('src/ui/components/TextSimple.lua'))
        :add(std.node.load('src/ui/components/TextSimple.lua'))
        :apply()

    data.image = data.ui_grid:get_item(1)
    data.image.data.src = 'partly-cloudy-day-64.png'
    data.image.data.img_width = 64
    data.image.data.img_height = 64
    data.image.data.center_x = true
    data.image.data.center_y = true

    data.text1 = data.ui_grid:get_item(2)
    data.text1.data.label = '12pm'
    data.text1.data.size = 16
    data.text1.data.center_x = true
    data.text1.data.center_y = true
    
    data.text2 = data.ui_grid:get_item(3)
    data.text2.data.label = '30c'
    data.text2.data.size = 16
    data.text2.data.center_x = true
    data.text2.data.center_y = true
end

return Calendar
