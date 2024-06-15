return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- tsserver = {
      --   init_options = {
      --     preferences = {
      --       importModuleSpecifierPreference = "relative",
      --       importModuleSpecifierEnding = "minimal",
      --     },
      --   },
      -- },
      lemminx = {
        settings = {
          xml = {
            trace = {
              server = "verbose",
            },
            logs = {
              client = true,
              file = "~/lemminx.log",
            },
            format = {
              enabled = false,
              joinCommentLines = true,
              joinContentLines = true,
              quotations = "singleQuotes",
              insertSpaces = true,
              tabSize = 4,
            },
          },
        },
      },
    },
  },
}
