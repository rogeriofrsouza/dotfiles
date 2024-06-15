-- DO NOT change the paths and don't remove the colorscheme
local root = vim.fn.fnamemodify("./.repro", ":p")

-- set stdpaths to use .repro
for _, name in ipairs({ "config", "data", "state", "cache" }) do
  vim.env[("XDG_%s_HOME"):format(name:upper())] = root .. "/" .. name
end

-- bootstrap lazy
local lazypath = root .. "/plugins/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.runtimepath:prepend(lazypath)

-- install plugins
local plugins = {
  "folke/tokyonight.nvim",
  "folke/LazyVim",
  -- add any other plugins here
  "nvim-telescope/telescope.nvim",
  "nvim-lua/plenary.nvim",
  "garymjr/nvim-snippets",
  "L3MON4D3/LuaSnip",
}
require("lazy").setup(plugins, {
  root = root .. "/plugins",
  spec = {
    { import = "lazyvim.plugins.extras.lang.luasnip" },
  },
})

vim.cmd.colorscheme("tokyonight")
-- add anything else here
