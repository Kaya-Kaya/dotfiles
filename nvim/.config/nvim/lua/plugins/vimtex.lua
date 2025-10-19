return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_view_zathura_use_synctex = 0
    vim.g.vimtex_quickfix_enabled = false

    -- Make Ctrl-A (Cmd-S) saving update the pdf
    vim.keymap.set("n", "<C-a>", vim.cmd.w);
    vim.keymap.set("i", "<C-a>", vim.cmd.w);
  end,
}
