require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
        custom_captures = {
            -- ["punctuation.delimiter"] = "TSInclude",
            -- ["punctuation.special"] = "TSInclude",
            ["text.math"] = "TSFunction",
            ["text.title"] = "TSParameter",
        },
    },
    textobjects = {
        swap = {
            enable = true,
            swap_next = {
                ["<Leader>;"] = "@parameter.inner",
            },
            swap_previous = {
                ["<Leader>,"] = "@parameter.inner",
            },
        },
    },
})
