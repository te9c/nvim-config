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
            incremental_selection = { -- selection based on tree sitter nodes. Looks like cool feature, but i need to test it firstly.
                enable = true,
                keymaps = {
                    init_selection = "gnn",
                    node_incremental = "grn",
                    scope_incremental = "grc",
                    node_decremental = "grm",
                },
            },
            indent = {
                enable = false,
            }
        })
    end
}
