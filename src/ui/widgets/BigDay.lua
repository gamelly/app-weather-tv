local BigDay = {}

function BigDay.load(std, data)
    data.ui_grid = std.ui.grid('6x3')
        :dir(1)
        :add(std.node.load('src/ui/components/TextSimple.lua'), 6)
        :add({}, 6)
        :add(std.node.load('src/ui/components/TextSimple.lua'))
        :add(std.node.load('src/ui/components/TextSimple.lua'))
        :add(std.node.load('src/ui/components/TextSimple.lua'))
        :apply()
        
    local hem = data.height/3
    data.ui_grid:get_item(1).data.label = data.labels[1]
    data.ui_grid:get_item(1).data.size = data.height
    data.ui_grid:get_item(3).data.label = data.labels[2]
    data.ui_grid:get_item(3).data.size = hem
    data.ui_grid:get_item(4).data.label = data.labels[3]
    data.ui_grid:get_item(4).data.size = hem
    data.ui_grid:get_item(5).data.label = data.labels[4]
    data.ui_grid:get_item(5).data.size = hem
end

return BigDay