local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local sn = ls.snippet_node
local i = ls.insert_node

ls.add_snippets("all", {
  s("enquote", {
    t("\\enquote\\{"),
    i(1),
    t("}")
  })
})
