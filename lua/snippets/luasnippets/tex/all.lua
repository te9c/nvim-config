return {
    s({trig="texdefault", dscr="Expands into lecture preambule"}, 
        fmta(
        [[
        \documentclass[a4paper, 12pt]{article}
        \usepackage[T2A]{fontenc}
        \usepackage[utf8]{inputenc}
        \usepackage[russian]{babel}
        \usepackage{amsmath}
        \usepackage{amsfonts}
        \usepackage[bookmarks=true]{hyperref} 
        \usepackage{bookmark}

        \title{<>}
        \author{<>}
        \date{<>}

        \begin{document}
        \maketitle
        \tableofcontents

        <>

        \end{document}
        ]],
        { i(1), i(2, "Роман Дорджеев"), t(require("utils").rudate("%d %B %Y")), i(3)})
    ),
    s({trig="tt", dscr="Expands 'tt' into '\\text{}'", snippetType = "autosnippet"},
    {
        t("\\text{"),
        i(1),
        t("}")
    }, { condition = require("utils").in_mathzone }),

    s({trig="ff", dscr="Expands 'ff' into '\\frac{}{}'", snippetType="autosnippet"},
    {
        t("\\frac{"),
        i(1),
        t("}{"),
        i(2),
        t("}")
    }, { condition = require("utils").in_mathzone }),

    s({trig="eq", dscr="A LaTeX equation environment"},
    {
        t({
            "\\begin{equation}",
            "   "
        }),
        i(1),
        t({
            "",
            "\\end{equation}"
        })
    }),

    
    s({trig="env", snippetType="autosnippet"},
    fmta(
    [[
    \begin{<>}
        <>
    \end{<>}
    ]],
    {
        i(1),
        i(2),
        rep(1),  -- this node repeats insert node i(1)
    }
    )
    ),

    s({trig="mm", dscr="Inline math", snippetType="autosnippet"},
    fmta("$<>$", {i(1)})
    ),
    s({trig="MM", dscr="Display math", snippetType="autosnippet"},
    fmta([[
    \[
        <>
    \]
    ]], { i(1) })),

    s({trig="rr", dscr="Expands into array", snippetType="autosnippet"},
    fmta([[
    \begin{array}{<>}
        <>
    \end{array}
    ]], { i(1), i(2)})),

    s({trig="sss", dscr="Expands into section", snippetType="autosnippet"},
    fmta([[
    \section{<>}
    ]], { i(1) })),

    s({trig="ssu", dsrc="Expands into subsection", snippetType="autosnippet"},
    fmta([[
    \subsection{<>}
    ]], { i(1) })),

    s({trig="suu", dsrc="Expands into subsection", snippetType="autosnippet"},
    fmta([[
    \subsubsection{<>}
    ]], { i(1) })),

    s({trig="bb", dscr="Expand into \\mathbb{} (math zone only)", snippetType="autosnippet"},
    fmta([[
    \mathbb{<>}
    ]], { i(1) }), { condition = require("utils").in_mathzone }),

    s({trig="hh", dscr="Expands into \\emph{}", snippetType="autosnippet"},
    fmta("\\emph{<>}", { i(1) })),

    s({trig="qq", dscr="Expand into \\sqrt{} (math mode only)", snippetType="autosnippet"},
    fmta([[
    \sqrt{<>}
    ]], { i(1) }), { condition = require("utils").in_mathzone }),

    s({trig="ii", dscr="Expand into \\int (math mode only)", snippetType="autosnippet"},
    fmta([[
    \int
    ]], {} ), { condition = require("utils").in_mathzone } ),

    s({trig="il", dscr="Expand into \\int \\limits_{<>}^{<>} (math mode only)", snippetType="autosnippet"},
    fmta([[
    \int \limits_{<>}^{<>}
    ]], { i(1), i(2) }), { condition = require("utils").in_mathzone }),

    s({trig="...", dscr="Expand int \\dots (math mode only)", snippetType="autosnippet"},
    fmta([[
    \dots
    ]], {}), { condition = require("utils").in_mathzone })

}
