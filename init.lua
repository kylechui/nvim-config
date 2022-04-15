require("settings")
require("keybinds")

-- Plugin Shenanigans
require("plugins")
require("pluginSettings/comment")
require("pluginSettings/galaxyline")
require("pluginSettings/gruvbox-flat")
require("pluginSettings/indent-blankline")
require("pluginSettings/luasnip")
require("pluginSettings/null-ls")
require("pluginSettings/nvim-autopairs")
require("pluginSettings/nvim-bufferline")
require("pluginSettings/nvim-cmp")
require("pluginSettings/nvim-colorizer")
require("pluginSettings/nvim-lspconfig")
require("pluginSettings/nvim-tree")
require("pluginSettings/nvim-treesitter")
require("pluginSettings/nvim-trevJ")
require("pluginSettings/presence")
require("pluginSettings/telescope")
require("pluginSettings/vimtex")

-- Loads in snippets
require("luasnip.loaders.from_lua").load({
    paths = vim.fn["stdpath"]("config") .. "/luasnippets/"
})
