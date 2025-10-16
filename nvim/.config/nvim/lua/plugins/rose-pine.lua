return {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
        extend_background_behind_borders = false,
        styles = {
            transparency = true
        }
    },
    config = function(_, opts)
        require("rose-pine").setup(opts)
        vim.cmd("colorscheme rose-pine")
    end
}
