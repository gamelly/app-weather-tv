local Mid = {}

function Mid.load(std, data)
    data.ui_grid = std.ui.grid('5x2')
        :margin(50)
        :add(std.node.load('src/ui/widgets/BigDay.lua'))
        :apply()

    data.ui_grid:get_item(1).data.labels = {'25', 'ºC'}
end

return Mid
