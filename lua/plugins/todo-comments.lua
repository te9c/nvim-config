return {
    "folke/todo-comments.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    opts = {
        keywords = {
            TODO = { color = "default" }
        }
    },
    config = function(_, opts)
        require('todo-comments').setup(opts)
        vim.keymap.set('n', '<leader>ft', ':TodoTelescope<cr>', { silent = true, desc = "Search todo in telescope" })
    end
}
