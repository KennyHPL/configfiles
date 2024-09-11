return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local ll_config = require("lualine")
        ll_config.setup({
            options = {
                theme = "dracula",
            },
        })
    end,
}
