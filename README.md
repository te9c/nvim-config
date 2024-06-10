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

 - [Better escape](https://github.com/max397574/better-escape.nvim). Reduces delay when using jj exit combination.
 - [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons). Adds icons to various nvim plugins.
 - [bufferline](https://github.com/akinsho/bufferline.nvim). Adds the good-looking bufferline above. Dependencies: nvim-web-devicons
 - [markdown-preview](https://github.com/iamcco/markdown-preview.nvim). Markdown preview in browser.
 Usage: :MarkdownPreviewToggle, :MarkdownPreview, :MarkdownPreviewStop
