return {
    [1] = "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            suggestion = {
                auto_trigger = true,
                keymap = {
                    accept = "<C-Space>",
                },
            },
        })
    end,
}
