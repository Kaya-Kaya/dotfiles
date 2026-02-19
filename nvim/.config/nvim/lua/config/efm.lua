vim.lsp.config('efm', {
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            sh = {
                {lintCommand = "shellcheck ${INPUT}"}
            }
        }
    }
})

vim.lsp.enable('efm')
