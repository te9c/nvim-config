return {
  'stevearc/aerial.nvim',
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
  config = function()
      require('aerial').setup({
          layout = {
              max_width = { 40, 0.4 },
              min_width = 30
          }
      })

      vim.keymap.set('n', '<leader>at', ':AerialToggle!<CR>', { silent = true, desc = "Toggle aerial" })
      vim.keymap.set('n', '<leader>ao', ':AerialOpen!<CR>', { silent = true, desc = "Open aerial" })
      vim.keymap.set('n', '<leader>ac', ':AerialClose<CR>', { silent = true, desc = "Close aerial" })
  end
}
