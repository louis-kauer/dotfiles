return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
        {
            "nvim-treesitter/nvim-treesitter-context", -- Show code context
            opts = { enable = true, mode = "topline", line_numbers = true },
        },
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "markdown" },
            callback = function(ev)
                -- Tree-sitter-context is buggy with Markdown files
                require("treesitter-context").disable()
            end,
        })

        treesitter.setup({
            ensure_installed = {
                "csv",
                "dockerfile",
                "gitignore",
                "go",
                "gomod",
                "gosum",
                "gowork",
                "javascript",
                "json",
                "lua",
                "markdown",
                "proto",
                "python",
                "rego",
                "ruby",
                "sql",
                "svelte",
                "yaml",
                "php",
            },
            indent = { enable = true },
            auto_install = true,
            sync_install = false,
            highlight = {
                enable = true,
                disable = { "csv" }, -- preferring chrisbra/csv.vim
            },
            autotag = {
                enable = true,
            },
            textobjects = { select = { enable = true, lookahead = true } },
        })
    end,
}
