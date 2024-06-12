return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
        direction = "float",
        open_mapping = [[<c-\>]],
        size = function(term)
            if term.direction == "horizontal" then
                return 13
            elseif term.direction == "vertical" then
                return vim.o.columns * 0.4
            end
        end,
        -- shell = '/bin/bash' -- Bash shell or ZSH? Zsh have pretty long startup time.
    },
    config = function(_, opts)
        require("toggleterm").setup(opts)

        vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>', { silent = true, desc = "Toggle terminal float mode" })
        vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>', { silent = true, desc = "Toggle terminal horizontal mode" })
        vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical<CR>', { silent = true, desc = "Toggle terminal vertical mode" })
    end
}
