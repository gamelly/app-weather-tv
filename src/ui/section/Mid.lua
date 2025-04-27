local Mid = {}

function Mid.load(std, data)
    data.ui_grid = std.ui.grid('5x2')
        :margin(50)
        :add(std.node.load('src/ui/widgets/BigDay.lua'))
        :apply()

    data.temp = data.ui_grid:get_item(1)
    data.temp.data.labels = {'00', '\194\186C'}
    data.temp.data.listeners = {'put_current_temperature'}
end

return Mid
