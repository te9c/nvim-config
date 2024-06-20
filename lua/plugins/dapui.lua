return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
    },
    config = function ()
        local dapui = require('dapui')
        local dap = require('dap')
        dapui.setup()

        dap.listeners.before.attach.dapui_config = function ()
            dapui.open()
        end

        dap.listeners.before.launch.dapui_config = function ()
            dapui.open()
        end

        vim.keymap.set('n', '<leader>du', dapui.toggle, { desc = "DAP Toggle UI "})
        vim.keymap.set('n', '<leader>de', dapui.eval, { desc = "DAP Evaluate under cursor" })
    end
}
