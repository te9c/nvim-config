-- I have a feeling that this configuration would be a total mess...
-- At least i want to make all of this work.

-- FUCK. fucking heirline. fucking statusline. fucking winbar. FUCK FUCK FUCK.
-- It would be better if i would just use pre-configured plugins...

return {
    "rebelot/heirline.nvim",
    dependencies = {
        "Zeioth/heirline-components.nvim",
        "lewis6991/gitsigns.nvim", -- For git integration.
    },
    config = function()
        -- See https://github.com/rebelot/heirline.nvim/blob/master/cookbook.md

        local conditions = require("heirline.conditions")
        local utils = require("heirline.utils")

        local heirline = require('heirline')
        local heirline_components = require('heirline-components.all')

        heirline_components.init.subscribe_to_events()

        heirline.setup({
            statusline = {
                hl = { fg = "fg", bg = "bg" },
                heirline_components.component.mode({ mode_text = {} }),
                heirline_components.component.git_branch({ hl = { fg = "#FF00FF" } }),
                heirline_components.component.file_info({ filename = {}, filetype = false }),
                heirline_components.component.diagnostics(),
                heirline_components.component.fill(),
                heirline_components.component.cmd_info(),
                heirline_components.component.fill(),
                heirline_components.component.lsp(),
                heirline_components.component.treesitter({ hl = { fg = "#8DB600" } }),
                -- heirline_components.component.nav { surround = { separator = "left" } }
                heirline_components.component.nav()
            },
            statuscolumn = { -- UI left column
                init = function(self) self.bufnr = vim.api.nvim_get_current_buf() end,
                heirline_components.component.foldcolumn(), -- :h foldcolumn
                heirline_components.component.signcolumn(),
                heirline_components.component.numbercolumn(),
            },
            -- tabline = {
            --     hl = { fg = "fg", bg = "bg" },
            --     heirline_components.component.tabline_conditional_padding(),
            --     heirline_components.component.tabline_buffers({
            --         close_button = false,
            --     }),
            --
            --     heirline_components.component.fill { hl = { bg = "tabline_bg" } },
            --     heirline_components.component.tabline_tabpages()
            -- },
            -- winbar = {
            --     init = function(self)
            --         self.bufnr = vim.api.nvim_get_current_buf()
            --     end,
            --     fallthrough = false,
            --     { -- inactive winbar
            --         condition = function () 
            --             return not conditions.is_active()
            --         end,
            --         hl = { fg = "fg", bg = "bg" },
            --         heirline_components.component.file_info({
            --             file_icon = {
            --                 hl = .hl.file_icon("winbar"),
            --                 padding = { left = 0 },
            --             },
            --             filename = {},
            --             filetype = false,
            --             file_read_only = false,
            --             hl = status.hl.get_attributes("winbarnc", true),
            --             surround = false,
            --             update = "BufEnter",
            --         })
            --     }
            -- },
            opts = {
                colors = heirline_components.hl.get_colors()
            }
        })
    end,
}
