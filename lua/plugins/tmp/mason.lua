-- Package manager.
-- Easily install and manage LSP servers, DAP servers, linters, and formatters.
return {
    "williamboman/mason.nvim",
    priority = 110, -- this is because of mason lsp chain loading.
    config = true
}
