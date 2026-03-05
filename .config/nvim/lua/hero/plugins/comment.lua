-- Keybind => gcc for one line or gc[count]{motion}
return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        -- Set Comment sting for terraform
        local ft = require("Comment.ft")
        ft.set("tf", "#%s")
        require("Comment").setup()
    end,
}
