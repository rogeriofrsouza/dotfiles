return {
  {
    "https://gitlab.com/schrieveslaach/sonarlint.nvim.git",
    lazy = true,
    ft = { "java" },
    opts = {
      server = {
        cmd = {
          "sonarlint-language-server",
          "-stdio",
          "-analyzers",
          vim.fn.expand("~/.local/share/nvim/mason/share/sonarlint-analyzers/sonarjava.jar"),
        },
        settings = {
          sonarlint = {
            test = "test",
          },
        },
      },
      filetypes = {
        "java",
      },
    },
  },
}
