# About

This is my config with plugins that I choose to include. I got tired from
pre-configurated bundles like astronvim, so I decided to build my own
environment.

# Goals

I will try to make this config documented as much as possible. I want to
understand what every line of code do and why it is important in my config.
Also, I will try to make this config lightweight, and will not include features
that I dont or rarely use.

# Plugin manager

I will choose [lazy.nvim](https://github.com/folke/lazy.nvim), because I
familliar with it from my astronvim config.

> NOTE: The LazyPlugin that is passed to some functions in plugin spec is the table itself.

## Plugins

`deprecated`

 - [Better escape](https://github.com/max397574/better-escape.nvim). Reduces
 delay when using jj exit combination.
 - [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons). Adds
 icons to various nvim plugins.
 - [bufferline](https://github.com/akinsho/bufferline.nvim). Adds the
 good-looking bufferline above. Dependencies: nvim-web-devicons
 - [markdown-preview](https://github.com/iamcco/markdown-preview.nvim).
 Markdown preview in browser. Usage: :MarkdownPreviewToggle, :MarkdownPreview,
 :MarkdownPreviewStop
 - [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua). File explorer. I
 will try to use this, instead of
 [neotree](https://github.com/nvim-neo-tree/neo-tree.nvim) to try to use
 something different.
 - [telescope](https://github.com/nvim-telescope/telescope.nvim). Fuzzy finder.
 Dependencies: [plenary](https://github.com/nvim-lua/plenary.nvim)
 - [toggleterm](https://github.com/akinsho/toggleterm.nvim). Plugin for
 managing multiple terminal windows.
 - [autopairs](https://github.com/windwp/nvim-autopairs). Autopairs. Very
 convinient.
 - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp). Autocompletion engine
 plugin. I've tried to use [coq_nvim](https://github.com/ms-jpq/coq_nvim), but
 IMHO nvim-cmp is better, cause main advantage of coq_nvim is speed, but
 nvim-cmp is works fast too.
 - [gitsigns](https://github.com/lewis6991/gitsigns.nvim). Adds git signs in statuscolumn. Looks like useful plugin, but I need to see it's docs to understand all of this colors.
 - [heirline](https://github.com/rebelot/heirline.nvim), [heirline-components](https://github.com/Zeioth/heirline-components.nvim). Engine for creating custom statusbars, winbars, statuscolumns. Very hard plugin to configure, but it gives cool statusbars at the end.
 - [highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors). Adds real-time color highlighting.
 - [lspconfig](https://github.com/neovim/nvim-lspconfig)
