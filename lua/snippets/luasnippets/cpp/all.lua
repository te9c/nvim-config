return {
    s({trig="forr", snippetType = "autosnippet"},
    fmta(
    [[
    for (int <> = <>; <> <>; ++<>) {
        <>
    }
    ]], {i(1, "i"), i(2, "0"), rep(1), i(3), rep(1), i(4)}
    )),
    s({trig="forl", snippetType = "autosnippet"},
    fmta(
    [[
    for (int <> = <>; <> <>; --<>) {
        <>
    }
    ]], {i(1, "i"), i(2, "n"), rep(1), i(3), rep(1), i(4)}
    )),
    s({trig="ss", snippetType = "autosnippet"},
    fmta(
    [[
    <<<< ' ' <<<< 
    ]], {})
    ),
    s({trig="cout", snippetType = "autosnippet"},
    fmta(
    [[
    std::cout <<<< 
    ]], {})),
    s({trig="endd", snippetType = "autosnippet"},
    fmta(
    [[
    <<<< '\n'
    ]], {})
    ),
    s({trig="cin", snippetType = "autosnippet"},
    fmta(
    [[
    std::cin >>>> 
    ]], {})
    )
}
