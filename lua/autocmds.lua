local api = vim.api

-- These two autocmds is for restoring cursor position and
-- folds on re-entering buffer. It was taken from astronvim :d
-- I do not understand shit in these callback functions.
api.nvim_create_autocmd({ "BufWinLeave", "BufWritePost", "WinLeave" }, {
    callback = function(event)
        if vim.b[event.buf].view_activated then vim.cmd.mkview { mods = { emsg_silent = true } } end
    end
})
api.nvim_create_autocmd("BufWinEnter", {
    desc = "Try to load file view if available and enable view saving for real files",
    callback = function(event)
        if not vim.b[event.buf].view_activated then
            local filetype = vim.bo[event.buf].filetype
            local buftype = vim.bo[event.buf].buftype
            local ignore_filetypes = { "gitcommit", "gitrebase", "svg", "hgcommit" }
            if buftype == "" and filetype and filetype ~= "" and not vim.tbl_contains(ignore_filetypes, filetype) then
                vim.b[event.buf].view_activated = true
                vim.cmd.loadview { mods = { emsg_silent = true } }
            end
        end
    end,
})
