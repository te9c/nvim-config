return {
    s({ trig = ";a", snippetType = "autosnippet" }, { t("\\alpha") }, { condition = require("utils").in_mathzone }),
    s({ trig = ";b", snippetType = "autosnippet" }, { t("\\beta") }, { condition = require("utils").in_mathzone }),
    s({ trig = ";g", snippetType = "autosnippet" }, { t("\\gamma") }, { condition = require("utils").in_mathzone }),
    s({trig=",,", dscr="Expand into \\, (thin unbreakable space)", snippetType="autosnippet"},
    { t("\\,") })
}
