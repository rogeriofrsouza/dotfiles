return {
  {
    "https://gitlab.com/schrieveslaach/sonarlint.nvim.git",
    opts = {
      server = {
        cmd = {
          "sonarlint-language-server",
          "-stdio",
          "-analyzers",
          vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
        },
        -- settings = {
        --   sonarlint = {
        --     test = "test",
        --   },
        -- },
      },
      filetypes = {
        "java",
      },
    },
  },
}
