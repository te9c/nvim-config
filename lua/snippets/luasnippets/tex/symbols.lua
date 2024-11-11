return {
    s({ trig = ";a", dscr="alpha", snippetType = "autosnippet" }, { t("\\alpha") }, { condition = require("utils").in_mathzone }),
    s({ trig = ";b", dscr="beta", snippetType = "autosnippet" }, { t("\\beta") }, { condition = require("utils").in_mathzone }),
    s({ trig = ";g", dscr="gamma", snippetType = "autosnippet" }, { t("\\gamma") }, { condition = require("utils").in_mathzone }),
    s({ trig = ";e", dscr="epsilon", snippetType = "autosnippet" }, { t("\\epsilon") }, { condition = require("utils").in_mathzone }),
    s({ trig = ".e", dscr="exists", snippetType = "autosnippet" }, { t("\\exists") }, { condition = require("utils").in_mathzone }),
    s({ trig = ".a", dscr="for all", snippetType = "autosnippet" }, { t("\\forall") }, { condition = require("utils").in_mathzone }),
    s({ trig = ".i", dscr="infty", snippetType = "autosnippet" }, { t("\\infty") }, { condition = require("utils").in_mathzone }),

    s({trig=",,", dscr="Expand into \\, (thin unbreakable space)", snippetType="autosnippet"},
    { t("\\,") })
}
