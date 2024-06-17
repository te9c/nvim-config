-- Snippet engine
return {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    config = function()
        -- load snippets from path/of/your/nvim/config/my-cool-snippets
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./lua/snippets" } })
    end
}
