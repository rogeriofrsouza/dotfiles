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

-- vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_picker = "snacks"

-- Avante: views can only be fully collapsed with the global statusline
-- vim.opt.laststatus = 3

-- LSP Server to use for Ruby.
-- Set to "solargraph" to use solargraph instead of ruby_lsp.
vim.g.lazyvim_ruby_lsp = "ruby_lsp"
vim.g.lazyvim_ruby_formatter = "rubocop"

-- Prepend mise shims to PATH
vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH
