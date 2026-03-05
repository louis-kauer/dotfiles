return {
    "rcarriga/nvim-notify",
    config = function()
        local notify = require("notify")
        notify.setup({
            stages = "static",
            -- render = "compact",
            -- background_colour = "FloatShadow",
            timeout = 5000,
            background_colour = "#000000",
            render = "wrapped-compact", -- timeout = 3000,
        })

        -- Set the default notification system to use notify
        vim.notify = notify
    end,
}
