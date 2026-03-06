return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
        {
            "nvim-treesitter/nvim-treesitter-context",
            opts = { enable = true, mode = "topline", line_numbers = true },
        },
    },
    config = function()
        local status, treesitter = pcall(require, "nvim-treesitter.configs")
        if not status then
            return
        end

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
                disable = { "csv" },
            },
            autotag = {
                enable = true,
            },
            textobjects = { select = { enable = true, lookahead = true } },
        })

        -- Custom Markdown behavior
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "markdown" },
            callback = function()
                local ok, context = pcall(require, "treesitter-context")
                if ok then
                    context.disable()
                end
            end,
        })
    end,
}
