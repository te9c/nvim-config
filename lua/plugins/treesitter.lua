return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "cpp", "c_sharp", "lua", "vimdoc"},
            auto_install = true,
            ignore_install = { "latex" },
            highlight = {
                enable = true
            },
            indent = {
                enable = false,
            }
        })
    end
}
