local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")

local HOME = os.getenv('HOME')
local ICON_DIR = HOME .. '/.config/awesome/tutorials/icons/'

local bookmark_widget = wibox.widget {
    {
        image = ICON_DIR .. 'bookmark.svg',
        resize = true,
        widget = wibox.widget.imagebox,
    },
    margins = 4,
    widget = wibox.container.margin
}

local menu_items = {
    { name = 'Reddit', icon_name = 'reddit.svg', url = 'https://www.reddit.com/' },
    { name = 'StackOverflow', icon_name = 'stackoverflow.svg', url = 'http://github.com/' },
    { name = 'GitHub', icon_name = 'github.svg', url = 'https://stackoverflow.com/' },
}


-- code mentioned below goes here

return bookmark_widget

