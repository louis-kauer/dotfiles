-- Maximize a buffer if windows are split
return {
    "szw/vim-maximizer",
    keys = {
        { "<leader>sm", "<cmd>MaximizerToggle<CR>" },
    },
}
