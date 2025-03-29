return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "benfowler/telescope-luasnip.nvim"
    },
    config = function()
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous",
                        ["<C-h>"] = "preview_scrolling_left",
                        ["<C-l>"] = "preview_scrolling_right"
                    }
                }
            },
            -- extensions = {
            --     fzf = {
            --         fuzzy = true,
            --         override_generic_sorter = true,
            --         override_file_sorter = true,
            --         case_mode = "smart_case",
            --     }
            -- }
        })

        require('telescope').load_extension('luasnip')

        -- Keymaps section
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find files" }) -- Find files
        vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = "find words" }) -- Live grep
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "find buffers" }) -- find buffers
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "find help" }) -- find help tags
        vim.keymap.set('n', '<leader>fm', builtin.man_pages, { desc = "find man pages" }) -- man pages. Actually it's works very slow, so it's useless.
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "find keymaps" }) -- find keymaps
        vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "find diagnostics" })
        vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = "find lsp symbols in document" })
        vim.keymap.set('n', '<leader>fS', builtin.lsp_workspace_symbols, { desc = "find lsp symbols in workspace" })
        vim.keymap.set('n', '<leader>fn', require'telescope'.extensions.luasnip.luasnip, { desc = "find snippets" })
    end
}
