return {
    "Hoffs/omnisharp-extended-lsp.nvim",
    ft = "cs",
    config = function ()
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local bufnr = args.buf
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                local ext = require('omnisharp_extended')

                if client.name == "omnisharp" then
                    vim.keymap.set('n', 'gd', ext.telescope_lsp_definition, { desc = "Go to definition", buffer = bufnr })
                    vim.keymap.set('n', 'gr', ext.telescope_lsp_references, { desc = "Go to references", buffer = bufnr })
                    vim.keymap.set('n', 'gi', ext.telescope_lsp_implementation, { desc = "Go to implemenations", buffer = bufnr })
                end
            end
        })
    end
}
