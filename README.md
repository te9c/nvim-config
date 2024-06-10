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

 - [Better escape](https://github.com/max397574/better-escape.nvim). Reduces
 delay when using jj exit combination.
 - [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons). Adds
 icons to various nvim plugins.
 - [bufferline](https://github.com/akinsho/bufferline.nvim). Adds the
 good-looking bufferline above. Dependencies: nvim-web-devicons
 - [markdown-preview](https://github.com/iamcco/markdown-preview.nvim).
 Markdown preview in browser. Usage: :MarkdownPreviewToggle, :MarkdownPreview,
 :MarkdownPreviewStop
 - [presence](https://github.com/andweeb/presence.nvim). Adds support for
 discord rich presence. This plugin is just for fun and could be disabled for
 faster startup time. Yeah, i know that it's contradicts with my statement
 about keeping this configuration lightweight, but fuck off. This is my config.
 *Disabled.*
 - [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua). File explorer. I
 will try to use this, instead of
 [neotree](https://github.com/nvim-neo-tree/neo-tree.nvim) to try to use
 something different.
 - [telescope](https://github.com/nvim-telescope/telescope.nvim). Fuzzy finder.
 Dependencies: [plenary](https://github.com/nvim-lua/plenary.nvim)
