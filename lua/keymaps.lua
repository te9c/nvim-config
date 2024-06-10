-- See :help lua-guide-mappings

vim.g.mapleader = " " -- Set mapleader to space
vim.g.maplocalleader = "\\" -- local leader i dunno, set this because of lazy nvim

-- vim.keymap.set('i', 'jj', '<esc>') -- Better escape (actually i need to install special plugin for this)

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

-- Buffer navigation
vim.keymap.set('n', '[b', ':bprevious<CR>', { silent = true })
vim.keymap.set('n', ']b', ':bnext<CR>', { silent = true })

-- Tab navigation
-- I personally doesn't often use tabs, but i will keep this mappings, if i would like to try tab functional.
-- I would keep meaning tabs as vim-tabs and will not downloads scope.nvim plugin, to change the way tabs was designed in vim.
vim.keymap.set('n', '[t', ':tabprevious<CR>', { silent = true })
vim.keymap.set('n', ']t', ':tabnext<CR>', { silent = true })
