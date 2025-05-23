return {
    "williamboman/mason-lspconfig.nvim",
    priority = 100,
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig"
    },
    config = function()
        require("mason-lspconfig").setup()

        require("mason-lspconfig").setup_handlers {
            -- The first entry (without a key) will be the default handler
            -- and will be called for each installed server that doesn't have
            -- a dedicated handler.
            function (server_name) -- default handler (optional)

                local capabilities = require('cmp_nvim_lsp').default_capabilities()
                capabilities.textDocument.completion.completionItem.snippetSupport = false
                require("lspconfig")[server_name].setup {
                    capabilities = capabilities,
                }
            end,
            ["lua_ls"] = function ()
                local lspconfig = require("lspconfig")
                local capabilities = require('cmp_nvim_lsp').default_capabilities()

                lspconfig.lua_ls.setup {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" }
                            }
                        }
                    },
                    capabilities = capabilities
                }
            end,
            -- ["clangd"] = function ()
            --     local lspconfig = require("lspconfig")
            --     local capabilities = require('cmp_nvim_lsp').default_capabilities()
            --
            -- end
            --
            -- Next, you can provide a dedicated handler for specific servers.
            -- For example, a handler override for the `rust_analyzer`:
            -- ["rust_analyzer"] = function ()
            --     require("rust-tools").setup {}
            -- end
        }
    end
}
