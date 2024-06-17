-- Pretty much bloatware for now.
-- Doesnt really use that often.
-- And certainly I am not utilizing all it's features.
--
-- Candidate for removal

return {
    "folke/trouble.nvim",
    opts = {
        open_no_results = true
    },
    cmd = "Trouble",
    keys = {
        {
            "<leader>bt",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>bT",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>bs",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Toggle symbols (Trouble)"
        },
        {
            "<leader>bl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "Toggle lsp defenitions/references/... (Trouble)"
        },
        {
            "<leader>bq",
            "<cmd>Trouble todo toggle<cr>",
            desc = "Quickfix list (Trouble)"
        }
    },
}
