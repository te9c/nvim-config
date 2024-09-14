return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            -- NOTE: This is project.nvim requirement for
            -- nvim-tree integration.
            sync_root_with_cwd = false,
            respect_buf_cwd = false,
            -- update_focused_file = {
            --     enable = true,
            --     update_root = true,
            -- }
        })

        local api = require("nvim-tree.api")

        vim.keymap.set('n', '<leader>et', api.tree.toggle) -- toggle tree
        vim.keymap.set('n', '<leader>eo', api.tree.open) -- open tree
        vim.keymap.set('n', '<leader>ec', api.tree.close) -- close tree
        vim.keymap.set('n', '<leader>ef', api.tree.focus) -- focus tree
    end
}
