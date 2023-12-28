return {
  {
    "neoclide/coc.nvim",
    branch = "master",
    run = "yarn install --frozen-lockfile",
    config = function()
      require("ufo").setup()
    end,
  },
}
