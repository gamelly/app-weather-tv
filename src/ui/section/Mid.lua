local Mid = {}

function Mid.load(std, data)
    data.ui_grid = std.ui.grid('3x2')
        :add({}, 3)
        :add(std.node.load('src/ui/widgets/BigDay.lua'))
        :apply()

    data.ui_grid:get_item(2).data.labels = {'25', 'ºC'}
end

return Mid
