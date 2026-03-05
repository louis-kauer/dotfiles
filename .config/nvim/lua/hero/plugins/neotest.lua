return {
    "nvim-neotest/neotest",
    lazy = true,
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        { "fredrikaverpil/neotest-golang", version = "*" }, -- Installation
        "sidlatau/neotest-dart",
        "rouge8/neotest-rust",
    },
    config = function()
        require("neotest").setup({
            adapters = {
                require("neotest-golang"),
                require("neotest-rust"),
                require("neotest-dart")({
                    command = "flutter",
                    use_lsp = true,
                }),
            },
        })

        -- TODO: Improve keybinds

        -- Keybindings for Neotest
        local opts = { noremap = true, silent = true }

        -- Run the nearest test
        vim.keymap.set("n", "<leader>tn", function()
            require("neotest").run.run()
        end, opts)

        -- Run the current file
        vim.keymap.set("n", "<leader>tf", function()
            require("neotest").run.run(vim.fn.expand("%"))
        end, opts)

        -- Debug the nearest test
        vim.keymap.set("n", "<leader>td", function()
            require("neotest").run.run({ strategy = "dap" })
        end, opts)

        -- Stop the nearest test
        vim.keymap.set("n", "<leader>ts", function()
            require("neotest").run.stop()
        end, opts)

        -- Attach to the nearest test
        vim.keymap.set("n", "<leader>ta", function()
            require("neotest").run.attach()
        end, opts)

        -- Open the output window
        vim.keymap.set("n", "<leader>to", function()
            require("neotest").output.open()
        end, opts)

        -- Open the summary window
        vim.keymap.set("n", "<leader>tsu", function()
            require("neotest").summary.open()
        end, opts)

        -- Watch tests for changes
        vim.keymap.set("n", "<leader>tw", function()
            require("neotest").watch.start()
        end, opts)

        -- Toggle the output panel
        vim.keymap.set("n", "<leader>top", function()
            require("neotest").output_panel.toggle()
        end, opts)

        -- Diagnostics
        vim.keymap.set("n", "<leader>tdi", function()
            vim.diagnostic.open_float()
        end, opts)

        -- Status signs
        vim.keymap.set("n", "<leader>tsg", function()
            require("neotest").status.toggle()
        end, opts)
    end,
}
