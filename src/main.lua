local App = {
    title = 'Weather TV',
    author = 'RodrigoDornelles',
    description = 'see everything about the weather forecast on your television',
    version = '1.0.0',
    require = 'json'
}

function App.load(std, data)
    std.ui.grid('1x1'):add(std.node.load('src/ui/home.lua')):apply()
end

App.assets = {
    'assets/clean-day.jpg:clean-day.jpg',
    'assets/partly-cloudy-day-64.png:partly-cloudy-day-64.png',
}

return App
