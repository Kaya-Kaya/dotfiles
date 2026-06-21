return {
    "prettier/vim-prettier",
    config = function ()
        vim.g["prettier#autoformat"] = true;
        vim.g["prettier#autoformat_require_pragma"] = false;
        vim.g["prettier#exec_cmd_async"] = true;
    end
}
