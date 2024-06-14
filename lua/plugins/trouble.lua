return {
    "folke/trouble.nvim",
    opts = {
        open_no_results = true
    },
    cmd = "Trouble",
    keys = {
        {
            "<leader>tt",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>tT",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>ts",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Toggle symbols (Trouble)"
        },
        {
            "<leader>tl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "Toggle lsp defenitions/references/... (Trouble)"
        },
        {
            "<leader>tq",
            "<cmd>Trouble todo toggle<cr>",
            desc = "Quickfix list (Trouble)"
        }
    },
}
