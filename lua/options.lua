-- For lua neovim guide see :help lua-guide

require('user.compile-and-run')

local opt = vim.opt
-- disabling netrw cuz of NvimTree plugin.
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

opt.background = "dark" -- "dark" or "light", used for highlight colors
vim.cmd.colorscheme("desert") -- setting colorscheme
vim.cmd("hi StatusLine ctermbg=black ctermfg=white guifg=white guibg=#000001")
vim.cmd("hi TabLineFill guifg=white guibg=#000001 ctermbg=black ctermfg=white")

opt.number = true -- Show line number
opt.relativenumber = true -- Show relative line number to the cursor

-- Indenting
-- opt.autoindent = true -- Take indent for new line from previous line
opt.cindent = true -- cident will override the above command.
opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- In insertmode replace <Tab> with appropriate number of space (i.e. shiftwidth). To insert a real tab use `CTRL-V<Tab>`


-- Search patterns
opt.ignorecase = true -- It will basically ignore case, untill you entered capital letter in your search pattern
opt.smartcase = true

opt.scrolloff = 2 -- Minimum amount of lines above and below the cursor.

opt.undofile = true -- Save undo history to a file to recover it after reentering

opt.cmdheight = 0 -- Auto hide cmdline in statusline.
opt.laststatus = 3 -- Show only one global statusline at the bottom of the window instead of printing it for each window

-- Tree sitter folding. See lua/plugins/tree-sitter.lua
opt.foldmethod="expr"
-- opt.foldexpr="nvim_treesitter#foldexpr()"
opt.foldenable=true
opt.foldlevel=999

opt.showtabline = 2 -- Always show tabline. Required for heirline bufferline to work

-- Statuscolumn
opt.foldcolumn = "auto"
opt.signcolumn = "yes"

vim.g.tex_flavor = "latex" -- for correct filetype recognititon for .tex files (for snippets)
