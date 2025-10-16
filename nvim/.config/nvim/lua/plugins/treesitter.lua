return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        branch = 'main',
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "python",
                "go",
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown_inline",
                "markdown",
                "c",
                "cpp",
                "glsl",
                "javascript",
                "typescript",
                "html",
                "css",
                "rust",
                "c_sharp",
                "json",
                "jsonc",
                "make",
                "cmake",
                "regex",
                "bash",
            }
        }
    }
}
