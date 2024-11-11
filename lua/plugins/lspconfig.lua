return {
    "neovim/nvim-lspconfig",
    -- opts = {
    --     autostart = false
    -- },
    config = function ()
        require'lspconfig'.kotlin_language_server.setup{}
    end
}
