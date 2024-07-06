return {
  {
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
          init_options = {
            settings = {
              xml = {
                format = {
                  enabled = true,
                  splitAttributes = "alignWithFirstAttr",
                  joinContentLines = true,
                  preservedNewlines = 1,
                  insertSpaces = true,
                  tabSize = 4,
                },
              },
            },
          },
        },
      },
    },
  },
}
