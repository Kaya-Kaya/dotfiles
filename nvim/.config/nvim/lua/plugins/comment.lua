return {
    config = function ()
        require('nvim_comment').setup {
            line_mapping = "<C-/>",
            operator_mapping = "<leader>/"
        }
    end,
    "terrortylor/nvim-comment"
}


