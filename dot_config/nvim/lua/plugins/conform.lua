return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      xml = { "lemminx" },
      java = { "google-java-format" },
    },
    formatters = {
      ["google-java-format"] = {
        prepend_args = { "--aosp" },
      },
      --   xmllint = {
      --     inherit = false,
      --     command = "xmllint",
      --     args = { "--format", "$FILENAME" },
      --   },
      --   env = {
      --     XMLLINT_INDENT = "    ",
      --   },
    },
  },
}
