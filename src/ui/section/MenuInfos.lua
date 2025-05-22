local MenuInfos = {}
local months_pt_br = {
    "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
    "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"
}
local day_of_week_pt_br = {
    "Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira",
    "Quinta-feira", "Sexta-feira", "Sábado"
}

function MenuInfos.load(std, data)
    local day = tonumber(os.date("%d"))
    local month = months_pt_br[tonumber(os.date("%m"))]
    local hour = os.date("%H:%M")
    local day_of_week = day_of_week_pt_br[tonumber(os.date("%w")) + 1]
    
    data.ui_grid = std.ui.grid('5x2')
        :margin(50)
        :add(std.node.load('src/ui/elements/TextSimple.lua'),5)
        :add(std.node.load('src/ui/widgets/BigDay.lua'))
        :apply()

    data.city = data.ui_grid:get_item(1)
    data.city.data.listen = 'put_gelocation_str'
    data.city.data.color = std.color.white
    data.city.data.size = 26
    data.city.data.center_x = true
    data.city.data.center_y = true



    data.ui_grid:get_item(2).data.labels = {
        tostring(day),
        month,
        hour,
        day_of_week
    }
    data.ui_grid:get_item(2).data.info_padding_x = 100
    data.ui_grid:get_item(2).data.int_padding = 15

end


function MenuInfos.draw(std, data)
    if data.background then
        std.draw.color(0x2C292EFF)
        std.draw.rect(0, 0, 0, data.width, data.height)
    end
end

return MenuInfos
