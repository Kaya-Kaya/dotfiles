vim.opt.termguicolors = true

require("config")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.so = 7

vim.opt.list = true
vim.opt.listchars = { tab = ">.", trail = "." }

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Fixed column size of 1 for errors
vim.opt.signcolumn = "yes:1"

vim.lsp.enable({
    'lua_ls',
    'eslint',
    'ts_ls',
    'rust_analyzer',
    'clangd',
    'basedpyright',
    'roslyn',
    'neocmake',
    'bashls',
    'tailwindcss',
    'jsonls',
    'texlab',
    'hls',
    'glsl_analyzer',
    'kotlin_language_server'
})

-- local cmp = require("cmp")
-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- local cmp_mappings = lsp.
