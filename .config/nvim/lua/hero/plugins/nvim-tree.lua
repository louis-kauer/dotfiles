return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        -- Recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            view = {
                side = "right",
                width = 35,
                relativenumber = true,
            },
            renderer = {
                indent_markers = {
                    enable = true,
                },
            },

            -- Disable window_picker for explorer to work well with window splits
            actions = {
                open_file = {
                    quit_on_open = true,
                    window_picker = {
                        enable = false,
                    },
                },
            },
            filters = {
                custom = { ".DS_Store" },
            },
            git = {
                ignore = false,
            },
        })

        local keymap = vim.keymap

        keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
        keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
        keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")

        -- Keybinding to jump directly to the NvimTree window
        keymap.set("n", "<leader>ej", function()
            local view = require("nvim-tree.view")
            if view.is_visible() then
                view.focus()
            else
                vim.cmd("NvimTreeToggle")
            end
        end, { noremap = true, silent = true })
    end,
}
