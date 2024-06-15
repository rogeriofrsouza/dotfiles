return {
  "mfussenegger/nvim-jdtls",
  dependencies = { "mfussenegger/nvim-dap" },
  opts = {
    jdtls = function(opts)
      local install_path = require("mason-registry").get_package("jdtls"):get_install_path()
      local jvmArg = "-javaagent:" .. install_path .. "/lombok.jar"
      table.insert(opts.cmd, "--jvm-arg=" .. jvmArg)

      opts.settings = {
        java = {
          codeGeneration = {
            toString = {
              template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
            },
            useBlocks = true,
          },
          completion = {
            importOrder = {
              "java",
              "javax",
              "com",
              "org",
            },
          },
          configuration = {
            runtimes = {
              {
                name = "JavaSE-11",
                path = "~/.asdf/installs/java/openjdk-11.0.2",
              },
              {
                name = "JavaSE-17",
                path = "~/.asdf/installs/java/openjdk-17.0.2",
              },
            },
          },
          contentProvider = {
            preferred = "fernflower",
          },
          eclipse = {
            downloadSources = true,
          },
          format = {
            enabled = true,
            settings = {
              url = vim.fn.expand("~/Workspace/eclipse-java-google-style.xml"),
              profile = "GoogleStyle",
            },
          },
          implementationsCodeLens = {
            enabled = true,
          },
          inlayHints = {
            parameterNames = { enabled = "all" },
          },
          maven = {
            downloadSources = true,
          },
          references = {
            includeDecompiledSources = true,
          },
          referencesCodeLens = {
            enabled = true,
          },
          signatureHelp = { enabled = true },
          sources = {
            organizeImports = {
              starThreshold = 9999,
              staticStarThreshold = 9999,
            },
          },
        },
      }

      return opts
    end,
  },
}
