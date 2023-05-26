local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local sub = function() return {"<sub></sub>"} end

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "sub",
            namr = "Date",
            dscr = "Date in the form of YYYY-MM-DD",
        }, {
            func(sub , {}),
        }),
    },
})

