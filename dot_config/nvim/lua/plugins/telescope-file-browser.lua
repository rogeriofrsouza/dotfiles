return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    disabled = true,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<space>fb",
        ":Telescope file_browser<CR>",
        desc = "File Browser (root dir)",
        { noremap = true },
      },
      {
        "<space>fB",
        ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
        desc = "File Browser (cwd)",
        { noremap = true },
      },
    },
  },
}
