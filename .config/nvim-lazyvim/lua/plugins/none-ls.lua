return {
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      vim.list_extend(opts.sources or {}, {
        -- nls.builtins.formatting.google_java_format,
        -- nls.builtins.diagnostics.checkstyle.with({
        --   extra_args = { "-c", "/google_checks.xml" },
        -- }),
      })
    end,
  },
}
