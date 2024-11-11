-- See :help lua-guide-mappings

-- TODO: add function that checks if module is available and setup mappings.
-- Because I don't really like that my keymaps is distributed across many files.
-- They are all should be in this file.

vim.g.mapleader = " " -- Set mapleader to space
vim.g.maplocalleader = "," -- local leader i dunno, set this because of lazy nvim

vim.keymap.set('i', '<C-c>', '<Esc>')
-- vim.keymap.set('n', 'd', '<Left>')
-- vim.keymap.set('n', 'h', '<Down>')
-- vim.keymap.set('n', 't', '<Up>')
-- vim.keymap.set('n', 'n', '<Right>')

-- There is keymap jj to <esc> but it is in better escape plugin.

vim.keymap.set('n', 'o', 'o<esc>')
vim.keymap.set('n', 'O', 'O<esc>') -- o/O will not enter insert mode. Faster adding of new empty lines.

-- Clipboard control
-- I decided to try to use different keybindings for system clipboard
-- I guess it could help me to more effectively deal with clipboard problems
-- "" blank register is pointing to the last used register. See `:h registers`
vim.keymap.set('n', '<leader>y', '"*y') -- Copying
vim.keymap.set('v', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>p', '"*p') -- Pasting
vim.keymap.set('v', '<leader>p', '"*p')
vim.keymap.set('n', 'yaa', ":%y<cr><cr>", { silent = true, desc = "Copy all buffer to the clipboard"})
vim.keymap.set('n', '<leader>yaa', ":%y*<cr><cr>", { silent = true, desc = "Copy all buffer to the clipboard"})

-- Faster window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
-- Terminal window navigation
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
vim.keymap.set('t', 'JJ', '<C-\\><C-n>')
-- There also keybinding for opening terminal with toggleterm.
-- See lua/plugins/toggleterm.lua

-- Buffer controle

vim.keymap.set('n', '[b', ':bprevious<CR>', { silent = true, desc = "Go to the previous buffer" })
vim.keymap.set('n', '<C-*>', ':bprevious<CR>', { silent = true, desc = "Go to the previous buffer" })
vim.keymap.set('n', ']b', ':bnext<CR>', { silent = true, desc = "Go to the next buffer" })
vim.keymap.set('n', '<C-)>', ':bnext<CR>', { silent = true, desc = "Go to the next buffer" })

-- vim.keymap.set('n', '<leader>c', ':bd<CR>', { silent = true, desc = "Close current buffer" })
-- This keymap is defined in lua/plugins/mini-bufremove.lua

-- Tab control
-- I personally doesn't often use tabs, but i will keep this mappings, if i would like to try tab functional.
-- I would keep meaning tabs as vim-tabs and will not download scope.nvim plugin, to change the way tabs was designed in vim.
vim.keymap.set('n', '<C-t><C-*>', ':tabprevious<CR>', { silent = true, desc = "Go to the previous tab" })
vim.keymap.set('n', '<C-t><C-)>', ':tabnext<CR>', { silent = true, desc = "Go to the next tab" })

-- LSP control
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        -- I don't check if client is support these methods
        -- because it seems to be broken.
        -- At least with omnisharp it doesnt work :d
        -- I don't know why, maybe something with initialization

        -- local client = vim.lsp.get_client_by_id(args.data.client_id)
        local bufnr = args.buf
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { desc = "rename current symbol", buffer = bufnr })
        vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { desc = "Code action", buffer = bufnr })
        vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = "Format buffer", buffer = bufnr })
        vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = "Go to references", buffer = bufnr })
        vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = "Go to defenition", buffer = bufnr })
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Go to declaration", buffer = bufnr })
        vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = "Go to implemenation", buffer = bufnr })

        vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float, { desc = "Diagnostics hover", buffer = bufnr })
    end
})
-- CTRL-S in insert mode - signature help (default)


-- Package control
vim.keymap.set('n', '<leader>ks', ':Lazy<CR>', { silent = true, desc = "Show Lazy" })
vim.keymap.set('n', '<leader>kS', ':Lazy sync<CR>', { silent = true, desc = "Sync lazy" })
vim.keymap.set('n', '<leader>km', ':Mason<CR>', { silent = true, desc = "Show Mason" })

vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
    pattern = {"*.tex"},
    callback = function (args)
        local bufnr = args.buf
        vim.keymap.set('n', ",vt", ':VimtexTocToggle<CR>', {buffer = bufnr, silent = true})
    end
})

-- Keymaps for Trouble.
-- See lua/plugins/trouble.lua
