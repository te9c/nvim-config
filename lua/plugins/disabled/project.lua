return {
    "ahmedkhalf/project.nvim",
    config = function()
        require('project_nvim').setup()

        vim.keymap.set('n', '<leader>fp', ':Telescope projects<cr>', { silent = true, desc = "find projects" })
    end
}
