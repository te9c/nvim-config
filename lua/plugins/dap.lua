-- DAP (Debug Adapter Protocol)

return {
    "mfussenegger/nvim-dap",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
        local dap = require('dap')

        local pickers = require("telescope.pickers")
        local finders = require("telescope.finders")
        local conf = require("telescope.config").values
        local actions = require("telescope.actions")
        local action_state = require("telescope.actions.state")

        -- dap.adapters.codelldb = {
        --     type = 'server',
        --     port = "${port}",
        --     executable = {
        --         command = '/Users/te9c/.local/share/codelldb/extension/adapter/codelldb',
        --         args = {"--port", "${port}"},
        --     }
        -- }
        --
        -- dap.configurations.cpp = {
        --     {
        --         name = "Launch file",
        --         type = "codelldb",
        --         request = "launch",
        --         program = function ()
        --             return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        --         end,
        --         cwd = '${workspaceFolder}',
        --         stopOnEntry = false,
        --     }
        -- }

        -- cpptools
        -- dap.adapters.cppdbg = {
        --     id = 'cppdbg',
        --     type = 'executable',
        --     command = '/Users/te9c/.local/share/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
        -- }
        --
        -- dap.configurations.cpp = {
        --     {
        --         name = "Launch file",
        --         type = "cppdbg",
        --         request = "launch",
        --         MIMode = "lldb",
        --         miDebuggerPath = "/opt/homebrew/opt/llvm/bin/lldb",
        --         program = function()
        --             return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        --         end,
        --         cwd = '${workspaceFolder}',
        --         stopAtEntry = true,
        --     }
        -- }

        -- lldb-vscode configuration.
        -- Doesnt work. Breakpoints prints rejected.
        dap.adapters.lldb = {
            type = 'executable',
            command = '/opt/homebrew/opt/llvm/bin/lldb-dap',
            name = 'lldb',
        }

        dap.configurations.cpp = {
            {
                name = 'Launch',
                type = 'lldb',
                request = 'launch',
                program = function ()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')

                    -- return coroutine.create(function(coro)
                    --     local opts = {}
                    --     pickers
                    --     .new(opts, {
                    --         prompt_title = "Path to executable",
                    --         finder = finders.new_oneshot_job({ "fd", "--hidden", "--no-ignore", "--type", "x" }, {}),
                    --         sorter = conf.generic_sorter(opts),
                    --         attach_mappings = function(buffer_number)
                    --             actions.select_default:replace(function()
                    --                 actions.close(buffer_number)
                    --                 coroutine.resume(coro, action_state.get_selected_entry()[1])
                    --             end)
                    --             return true
                    --         end,
                    --     })
                    --     :find()
                    -- end)
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = true,
                args = {},
                runInTerminal = true,
            }
        }
        dap.configurations.c = dap.configurations.cpp

        -- KEYMAPS
        vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = "DAP Toggle breakpoint" })
        vim.keymap.set('n', '<leader>dc', dap.continue, { desc = "DAP continue" })
        vim.keymap.set('n', '<leader>dt', dap.terminate, { desc = "DAP terminate current session" })
        vim.keymap.set('n', '<leader>do', dap.step_over, { desc = "DAP Step Over" })
        vim.keymap.set('n', '<leader>di', dap.step_into, { desc = "DAP Step Into" })
        vim.keymap.set('n', '<leader>dO', dap.step_out, { desc = "DAP Step Out" })
        vim.keymap.set('n', '<leader>dB', dap.step_back, { desc = "DAP Step Back" })
        vim.keymap.set('n', '<leader>dC', dap.clear_breakpoints, { desc = "DAP Clear all breakpoints" })
    end
}
