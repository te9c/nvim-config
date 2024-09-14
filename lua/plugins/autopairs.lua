return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function ()
        require("nvim-autopairs").setup()

        local Rule = require('nvim-autopairs.rule')
        local npairs = require('nvim-autopairs')

        -- fuck this
        -- npairs.add_rules({
        --     Rule("'", "")
        --         -- :with_pair(function () return not require("utils").in_mathzone end)
        --         :with_pair(function () print("hello world") return false end)
        -- })
    end
}
