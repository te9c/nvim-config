-- lazy.nvim boostrap. See https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('keymaps')
require('options')
require('autocmds')

-- vim.cmd("source lua/HelpCurwin.vim") -- Adds :HelpCurwin command to show
                                     -- help window in current window

-- This should be AFTER my config
require("lazy").setup(
{
    { import = "plugins" }
},
{
    ui = {
        border = "single",
    },
    change_detection = {
        enabled = false
    },
})
