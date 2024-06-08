-- See :help lua-guide-mappings

vim.g.mapleader = " " -- Set mapleader to space

vim.keymap.set('i', 'jj', '<esc>') -- Better escape (actually i need to install special plugin for this)

vim.keymap.set('n', 'o', 'o<esc>')
vim.keymap.set('n', 'O', 'O<esc>') -- o/O will not enter insert mode. Faster adding of new empty lines.

-- Clipboard control
-- I decided to try to use different keybindings for system clipboard
-- I guess it could help me to more effectively deal with clipboard problems
vim.keymap.set('n', '<leader>y', '"+y') -- Copying
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p') -- Pasting
vim.keymap.set('v', '<leader>p', '"+p')
