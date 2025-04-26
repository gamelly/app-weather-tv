local Text = {}

function Text.draw(std, data)
    std.draw.color(std.color.white)
    if data.size and data.label then
        local align = data.center_x and 0 or 1
        local x = data.center_x and (data.width/2) or 0
        local y = data.center_y and (data.height/2) or 0
        std.text.font_size(data.size)
        std.text.print_ex(x, y, data.label, align)
    end
end

return Text