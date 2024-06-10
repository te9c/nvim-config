return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").setup()

        -- Keymaps section
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files) -- Find files
        vim.keymap.set('n', '<leader>fg', builtin.live_grep) -- Live grep
        vim.keymap.set('n', '<leader>fb', builtin.buffers) -- find buffers
        vim.keymap.set('n', '<leader>fh', builtin.help_tags) -- find tags
    end
}
