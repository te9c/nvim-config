return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup()

        local api = require("nvim-tree.api")

        vim.keymap.set('n', '<leader>et', api.tree.toggle) -- toggle tree
        vim.keymap.set('n', '<leader>eo', api.tree.open) -- open tree
        vim.keymap.set('n', '<leader>ec', api.tree.close) -- close tree
        vim.keymap.set('n', '<leader>ef', api.tree.focus) -- focus tree
    end
}
