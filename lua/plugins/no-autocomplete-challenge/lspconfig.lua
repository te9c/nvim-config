return {
    "neovim/nvim-lspconfig",
    -- opts = {
    --     autostart = false
    -- },
    config = function ()
        local lspconfig = require 'lspconfig'

        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = false

        lspconfig.clangd.setup{
            cmd = {
                '/Users/te9c/.local/share/lsp_servers/clangd/clangd_20.1.0/bin/clangd',
                '-j=4',
                -- '--malloc-trim',
                '--pch-storage=memory'
            },
            capabilities = capabilities
        }
        lspconfig.lua_ls.setup{
            on_init = function(client)
                if client.workspace_folders then
                    local path = client.workspace_folders[1].name
                    if path ~= vim.fn.stdpath('config') and (vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc')) then
                        return
                    end
                end

                client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                    runtime = {
                        -- Tell the language server which version of Lua you're using
                        -- (most likely LuaJIT in the case of Neovim)
                        version = 'LuaJIT'
                    },
                    -- Make the server aware of Neovim runtime files
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                            -- Depending on the usage, you might want to add additional paths here.
                            -- "${3rd}/luv/library"
                            -- "${3rd}/busted/library",
                        }
                        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
                        -- library = vim.api.nvim_get_runtime_file("", true)
                    }
                })
            end,
            settings = {
                Lua = {}
            },
            capabilities = capabilities
        }
        -- lspconfig.pyright.setup{}
        lspconfig.pylsp.setup {}
    end
}
