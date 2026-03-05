return {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = {
        "hrsh7th/nvim-cmp",
    },
    config = function()
        local autopairs = require("nvim-autopairs")

        autopairs.setup({
            check_ts = true, -- Enable tree-sitter
            ts_config = {
                lua = { "string" }, -- Don't add pairs in lua string tree-sitter nodes
                javascipt = { "tempate_string" }, -- Don't add pairs in javascipt template_string tree-sitter node
                java = false, -- Don't check tree-sitter on java
            },
        })

        local cmp_autopairs = require("nvim-autopairs.completion.cmp")

        local cmp = require("cmp")

        -- Make autopairs and completion work together
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
}
