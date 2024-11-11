return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    version = "*", -- install latest stable version of plugin (idk what this mean)
    config = function(plugin)
        local bufferline = require('bufferline')
        bufferline.setup {
            options = {
                style_preset = bufferline.style_preset.minimal,
                -- separator_style = "slope",
                -- numbers = "ordinal", -- Disabled until i find out way to switch buffers based on number
                show_buffer_close_icons = false,
                -- indicator = {
                --     style = 'underline'
                -- },
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File explorer (g?)",
                        text_align = "left"
                    }
                }
            }
        }
    end
}
