-- Place this in ${HOME}/.config/nvim/LuaSnip/all.lua

local utils = require("utils")

return {
    s({trig="today", dscr="insert today's date"}, { t(os.date("%d.%m.%Y")) }),
    s({trig="todayru", snippetType="autosnippet"}, { t( require("utils").rudate("%d %B %Y") ) }),
    s({trig="todayen", snippetType="autosnippet"}, { t( os.date("%d %B %Y") ) }),
}
