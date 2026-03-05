return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim", -- Automatically install other stuff than language servers
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- List of servers for mason to install
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "gopls",
                "golangci_lint_ls",
                "markdown_oxide",
                "jsonls",
                "bashls",
                "yamlls",
                "ts_ls",
                "lemminx", -- XML language server
            },
        })

        mason_tool_installer.setup({
            -- Install formatter
            ensure_installed = {
                "prettier",
                "stylua",
                "isort",
                "black",
                "pylint",
                "eslint_d",
                "swiftlint",
                "golangci-lint",
            },
        })
    end,
}
