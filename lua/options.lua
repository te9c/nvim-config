-- For lua neovim guide see :help lua-guide

local opt = vim.opt

-- disabling netrw cuz of NvimTree plugin.
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

opt.background = "dark" -- "dark" or "light", used for highlight colors
vim.cmd.colorscheme("desert") -- setting colorscheme

opt.number = true -- Show line number
opt.relativenumber = true -- Show relative line number to the cursor

-- Indenting
-- opt.autoindent = true -- Take indent for new line from previous line
opt.cindent = true -- cident will override the above command.
opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- In insertmode replace <Tab> with appropriate number of space (i.e. shiftwidth). To insert a real tab use `CTRL-V<Tab>`

opt.signcolumn = "yes"

-- Search patterns
opt.ignorecase = true -- It will basically ignore case, untill you entered capital letter in your search pattern
opt.smartcase = true

opt.scrolloff = 2 -- Minimum amount of lines above and below the cursor.

opt.undofile = true -- Save undo history to a file to recover it after reentering

opt.cmdheight = 0 -- Auto hide cmdline in statusline.
opt.laststatus = 3 -- Show only one global statusline at the bottom of the window instead of printing it for each window

-- Tree sitter folding. See lua/plugins/tree-sitter.lua