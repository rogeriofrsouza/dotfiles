-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enables logging on nvim-lspconfig :LspLog command
-- vim.lsp.set_log_level("debug")

-- This will make Neovim recognize files with the .http extension as HTTP files.
vim.filetype.add({
  extension = {
    ["http"] = "http",
    ["sqlfluff"] = "cfg",
  },
})

vim.g.lazyvim_picker = "telescope"
