local BackButton = {}

function BackButton.draw(std, data)
    std.draw.image(data.src, (data.width/2)-32.5, (data.height/2) - 32.5)
    std.draw.color(std.color.white)
    std.text.font_name('Plex')
    std.text.font_size(18)
    local btn = data.label
    local w, h = std.text.mensure(btn)
    std.text.print((data.width/2) - (w/2), (data.height/2) + 50,btn)
end

return BackButton