 -- Oh fuck, this heirline is pain in the ass to configure.
 -- I'm gonna use lualine, cuz i'm fucking tired to setup heirline.

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            section_separators = { left = '', right = '' },
            component_separators = { left = '|', right = '|' },
        }
    },
    config = true
}
