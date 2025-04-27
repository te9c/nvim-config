-- Snippet engine
return {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    config = function()
        -- load snippets from path/of/your/nvim/config/my-cool-snippets
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./lua/snippets/vscode" } })
        require("luasnip.loaders.from_lua").load({ paths = "./lua/snippets/luasnippets" })

        local ls = require('luasnip')

        ls.config.set_config({
            enable_autosnippets = true,
            store_selection_keys = true,
            update_events = 'TextChanged,TextChangedI'
        })

        vim.cmd[[
            " Use Tab to expand and jump through snippets
            imap <silent><expr> <C-s> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<C-s>' 
            smap <silent><expr> <C-s> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<C-s>'

            " Use Shift-Tab to jump backwards through snippets
            imap <silent><expr> <C-b> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<C-b>'
            smap <silent><expr> <C-b> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<C-b>'

            imap <silent><expr> <C-h> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-h>'
            smap <silent><expr> <C-h> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-h>'
        ]]
        -- Maybe this should be reworked...
        -- vim.keymap.set({"i", "s"}, "<C-L>", function()
        --     if ls.in_snippet() then
        --         ls.jump(1)
        --     end
        -- end, {silent = true})
        -- vim.keymap.set({"i", "s"}, "<C-H>", function()
        --     if ls.in_snippet() then
        --         ls.jump(-1)
        --     end
        -- end, {silent = true})
        -- vim.keymap.set({"i", "s"}, "<C-E>", function()
        --     if ls.choice_active() then
        --         ls.change_choice(1)
        --     end
        -- end, {silent = true})
    end
}
