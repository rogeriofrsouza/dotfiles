return {
  {
    "nvim-telescope/telescope.nvim",
    disabled = true,
    opts = {
      extensions = {
        file_browser = {
          collapse_dirs = true,
        },
      },
      defaults = {
        path_display = { "filename_first", "truncate" },
      },
    },
    keys = {
      { "<leader>fb", false },
      { "<leader>fd", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    },
  },
}
