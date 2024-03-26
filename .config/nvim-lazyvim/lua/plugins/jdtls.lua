return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          eclipse = {
            downloadSources = true,
          },
          maven = {
            downloadSources = true,
          },
          referencesCodeLens = {
            enabled = true,
          },
          references = {
            includeDecompiledSources = true,
          },
          inlayHints = {
            parameterNames = {
              enabled = "all",
            },
          },
          format = {
            enabled = true,
          },
        },
        signatureHelp = { enabled = true },
      },
    },
    keys = {
      {
        "<leader>cc",
        "<cmd>:lua vim.lsp.codelens.refresh()<cr>",
        desc = "Codelens refresh",
      },
      {
        "<leader>co",
        function()
          require("jdtls").organize_imports()
        end,
        desc = "Organize Imports",
      },
    },
  },
}
