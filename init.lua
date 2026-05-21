-- lazy.nvim boostrap. See https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require('keymaps')
require('options')
require('autocmds')

-- vim.cmd([[
-- inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
-- nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
-- ]])

-- vim.cmd("source lua/HelpCurwin.vim") -- Adds :HelpCurwin command to show
                                     -- help window in current window

-- This should be AFTER my config
require("lazy").setup(
{
    { import = "plugins" }
},
{
    ui = {
        border = "single",
    },
    change_detection = {
        enabled = false
    },
})

vim.lsp.config('*', {})

-- lsp i guess
vim.lsp.config('clangd', {
    cmd = {
        -- '/Users/te9c/.local/share/lsp_servers/clangd/clangd_20.1.0/bin/clangd',
        'clangd',
        '-j=4',
        -- '--malloc-trim',
        '--pch-storage=memory'
    },
    filetypes = { 'c', 'cpp' }
})


vim.lsp.config('luals', {
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
                -- (most likely LuaJIT in the case of Neovim
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
    capabilities = capabilities,
    filetypes = {'lua'}
})

-- vim.lsp.config('pylsp')
vim.lsp.enable('clangd')
vim.lsp.enable('luals')
vim.lsp.enable('pylsp')
vim.lsp.log.set_level 'off'
