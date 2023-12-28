return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      extensions = {
        file_browser = {
          collapse_dirs = true,
        },
      },
    },
    keys = {
      { "<leader>fb", false },
      { "<leader>fd", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    },
  },
}
