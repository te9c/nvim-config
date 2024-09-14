return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- source: lsp
        "hrsh7th/cmp-buffer", -- source: buffer
        "hrsh7th/cmp-path", -- source: filesystem path
        "hrsh7th/cmp-cmdline", -- source: cmdline suggestions
        "micangl/cmp-vimtex", -- source: vimtex

        'L3MON4D3/LuaSnip', -- Snippet engine
        "saadparwaiz1/cmp_luasnip", -- Snippet engine support for nvim-cmp

        "onsails/lspkind.nvim", -- completion formatting.
    },
    config = function()
        local cmp = require('cmp')
        local lspkind = require('lspkind')
        cmp.setup({
            snippet = {
            --     -- REQUIRED - you must specify a snippet engine
                expand = function(args)
            --         -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            --         -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            --         -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            --         -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
                end,
            },
            window = {
                -- completion = cmp.config.window.bordered(),
                -- documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                -- { name = 'vsnip' }, -- For vsnip users.
                { name = 'luasnip' }, -- For luasnip users.
                -- { name = 'ultisnips' }, -- For ultisnips users.
                -- { name = 'snippy' }, -- For snippy users.
            }, {
                { name = 'buffer' },
                { name = 'vimtex' }
            }),

            view = {
                entries = "custom",
            },
            formatting = {
                format = lspkind.cmp_format({
                    mode = "symbol_text",
                    menu = ({
                        buffer = "[Buffer]",
                        nvim_lsp = "[LSP]",
                        luasnip = "[LuaSnip]",
                        latex_symbols = "[Latex]",
                        vimtex = "[VimTeX]"
                    })
                })
            }
        })
    end,
}
