local Top = {}

function Top.load(std, data)
    data.ui_grid = std.ui.grid('3x2')
        :add(std.node.load('src/ui/components/TextOutline.lua'), 3)
        :add(std.node.load('src/ui/widgets/BigDay.lua'))
        :apply()

    data.city = data.ui_grid:get_item(1)
    data.city.data.label = 'Florianopolis, SC, Brasil'
    data.city.data.padding = 8

    data.ui_grid:get_item(2).data.labels = {'03', 'April', os.date("%H:%M"), 'Wednesday'}
end

return Top
