-- See :help lua-guide-mappings

-- TODO: add function that checks if module is available and setup mappings.
-- Because I don't really like that my keymaps is distributed across many files.
-- They are all should be in this file.

vim.g.mapleader = " " -- Set mapleader to space
vim.g.maplocalleader = "\\" -- local leader i dunno, set this because of lazy nvim

-- There is keymap jj to <esc> but it is in better escape plugin.

vim.keymap.set('n', 'o', 'o<esc>')
vim.keymap.set('n', 'O', 'O<esc>') -- o/O will not enter insert mode. Faster adding of new empty lines.

-- Clipboard control
-- I decided to try to use different keybindings for system clipboard
-- I guess it could help me to more effectively deal with clipboard problems
vim.keymap.set('n', '<leader>y', '"+y') -- Copying
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p') -- Pasting
vim.keymap.set('v', '<leader>p', '"+p')

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
vim.keymap.set('n', ']b', ':bnext<CR>', { silent = true, desc = "Go to the next buffer" })
-- vim.keymap.set('n', '<leader>c', ':bd<CR>', { silent = true, desc = "Close current buffer" })
-- This keymap is defined in lua/plugins/mini-bufremove.lua

-- Tab control
-- I personally doesn't often use tabs, but i will keep this mappings, if i would like to try tab functional.
-- I would keep meaning tabs as vim-tabs and will not download scope.nvim plugin, to change the way tabs was designed in vim.
vim.keymap.set('n', '[t', ':tabprevious<CR>', { silent = true, desc = "Go to the previous tab" })
vim.keymap.set('n', ']t', ':tabnext<CR>', { silent = true, desc = "Go to the next tab" })
