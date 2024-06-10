return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        -- Tree sitter based folding.
        vim.opt.foldmethod=expr
        vim.opt.foldexpr="nvim_treesitter#foldexpr()"
        vim.opt.foldenable=false

        configs.setup({
            ensure_installed = { "c", "cpp", "c_sharp", "lua", "vimdoc"},
            auto_install = true,
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
