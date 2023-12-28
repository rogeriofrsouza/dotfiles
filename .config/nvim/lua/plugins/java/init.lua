return {
  "nvim-java/nvim-java",
  dependencies = {
    "nvim-java/lua-async-await",
    "nvim-java/nvim-java-core",
    "nvim-java/nvim-java-test",
    "nvim-java/nvim-java-dap",
    "MunifTanjim/nui.nvim",
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    {
      "williamboman/mason.nvim",
      opts = {
        registries = {
          "github:nvim-java/mason-registry",
          "github:mason-org/mason-registry",
        },
      },
    },
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        handlers = {
          ["jdtls"] = function()
            require("java").setup()
          end,
        },
      },
    },
  },
  keys = function(args)
    return {
      require("which-key").register({
        ["<space>t"] = { name = "+test" },
        ["<space>tr"] = {
          ":JavaTestRunCurrentClass<CR>",
          "Run test class",
        },
        ["<space>tb"] = {
          ":JavaTestDebugCurrentClass<CR>",
          "Debug test class",
        },
        ["<space>tR"] = {
          ":JavaTestRunCurrentMethod<CR>",
          "Run test method",
        },
        ["<space>tB"] = {
          ":JavaTestDebugCurrentMethod<CR>",
          "Debug test method",
        },
        ["<space>tv"] = {
          ":JavaTestViewLastReport<CR>",
          "View last report",
        },
      }, { mode = "n", buffer = args.buf }),
    }
  end,
}
