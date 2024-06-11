-- NOTE: This could be replaced with mini.nvim plugin.
-- This plugin is part of mini.nvim, but now i don't really need
-- all the features that mini.nvim has, so i would not install
-- it.
--
-- Allows deleting buffers without destroying window layout.

return {
    "echasnovski/mini.bufremove",
    version = false, -- Idk why, but in repository it's set to false.
    config = function()
        local MiniBufremove = require('mini.bufremove')
        MiniBufremove.setup()

        vim.keymap.set('n', '<leader>c', MiniBufremove.delete, { desc = "close current buffer" })
    end,
}
