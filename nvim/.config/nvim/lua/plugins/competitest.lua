return {
    'xeluxee/competitest.nvim',
    ft = {"c", "cpp", "java", "python", "rust"},
    dependencies = 'MunifTanjim/nui.nvim',
    config = function()
        require('competitest').setup()

        vim.keymap.set("n", "<leader>cr", function()
            vim.cmd.CompetiTest("run")
        end)
        vim.keymap.set("n", "<leader>cu", function()
            vim.cmd.CompetiTest("show_ui")
        end)
        vim.keymap.set("n", "<leader>ca", function()
            vim.cmd.CompetiTest("add_testcase")
        end)
    end,
}
