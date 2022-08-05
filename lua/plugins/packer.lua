local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local use = require("packer").use

local packerUserConfig = augroup("packerUserConfig", {})
autocmd("BufWritePost", {
    pattern = {
        "packer.lua",
    },
    command = "source <afile> | PackerCompile",
    group = packerUserConfig,
})

return require("packer").startup(function()
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    -- Telescope nonsense
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    use({
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
    })
    use("nvim-telescope/telescope-file-browser.nvim")
    -- Status line and bufferline
    use({
        "nvim-lualine/lualine.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true,
        },
    })
    use("akinsho/bufferline.nvim")
    -- File explorer
    use({
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
    })
    -- Color scheme
    use("rebelot/kanagawa.nvim")
    -- Treesitter for better syntax highlighting and other features
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    use("nvim-treesitter/nvim-treesitter-textobjects")
    use("nvim-treesitter/playground")
    use("JoosepAlviste/nvim-ts-context-commentstring")
    -- Universal way to add comments
    use("numToStr/Comment.nvim")
    -- LaTeX integration
    use("lervag/vimtex")
    -- Snippets
    use("L3MON4D3/LuaSnip")
    -- Discord integration
    use("andweeb/presence.nvim")
    -- Highlight hex codes
    use("norcalli/nvim-colorizer.lua")
    -- Automatically insert pairs (for delimiters)
    use("windwp/nvim-autopairs")
    -- Git integration
    use("tpope/vim-fugitive")
    -- Markdown viewing
    use({
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
    })
    -- Formatter
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = "nvim-lua/plenary.nvim",
    })
    -- Reverse join lines
    use("AckslD/nvim-trevJ.lua")
    -- Indent blanklines
    use("lukas-reineke/indent-blankline.nvim")
    -- LSP Stuff
    use("neovim/nvim-lspconfig")
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    -- Autocomplete engine
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-nvim-lua")
    use("hrsh7th/cmp-path")
    use("uga-rosa/cmp-dictionary")
    use("saadparwaiz1/cmp_luasnip")
    -- Surround stuff with delimiters
    use("stevearc/dressing.nvim")
    -- use("wellle/targets.vim")
    -- use("tpope/vim-surround")
    ---[=[
    use({
        -- "/home/kylec/Documents/github/nvim-surround/main",
        "/home/kylec/Documents/github/nvim-surround/pattern-matching",
        -- "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup()
        end,
    })
    --]=]
end)
