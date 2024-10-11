return {
  "mfussenegger/nvim-jdtls",
  opts = {
    jdtls = function(opts)
      opts.settings = {
        java = {
          codeGeneration = {
            toString = {
              template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
            },
            useBlocks = true,
          },
          completion = {
            favoriteStaticMembers = {
              "org.hamcrest.MatcherAssert.assertThat",
              "org.hamcrest.Matchers.*",
              "org.hamcrest.CoreMatchers.*",
              "org.junit.jupiter.api.Assertions.*",
              "java.util.Objects.requireNonNull",
              "java.util.Objects.requireNonNullElse",
              "org.mockito.Mockito.*",
              "org.mockito.ArgumentMatchers.*;",
            },
            filteredTypes = {
              "com.sun.*",
              "io.micrometer.shaded.*",
              "java.awt.*",
              "jdk.*",
              "sun.*",
            },
          },
          configuration = {
            runtimes = {
              {
                name = "JavaSE-11",
                path = vim.fn.expand("~/.asdf/installs/java/openjdk-11.0.2"),
              },
              {
                name = "JavaSE-17",
                path = vim.fn.expand("~/.asdf/installs/java/openjdk-17.0.2"),
              },
              {
                name = "JavaSE-21",
                path = vim.fn.expand("~/.asdf/installs/java/openjdk-21.0.2"),
              },
            },
          },
          contentProvider = {
            preferred = "fernflower",
          },
          eclipse = {
            downloadSources = true,
          },
          foldingRange = {
            enabled = true,
            -- dynamicRegistration = false,
            -- lineFoldingOnly = true,
          },
          format = {
            enabled = true,
            -- settings = {
            --   url = vim.fn.expand("~/Workspace/eclipse-java-google-style.xml"),
            --   profile = "GoogleStyle",
            -- },
          },
          implementationsCodeLens = {
            enabled = true,
          },
          maven = {
            downloadSources = true,
          },
          references = {
            includeDecompiledSources = true,
          },
          referenceCodeLens = {
            enabled = true,
          },
          saveActions = {
            organizeImports = true,
          },
          settings = {
            url = vim.fn.expand("~/jdt-formatter.prefs"),
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

      -- opts.handlers = {
      --   ["$/progress"] = function() end, -- disable progress updates.
      --   ["language/status"] = function() end, -- mute; having progress reports is enough
      -- }

      local extendedClientCapabilities = require("jdtls").extendedClientCapabilities
      extendedClientCapabilities.resolveAdditionalTextEditsSupport = true
      opts.init_options.extendedClientCapabilities = extendedClientCapabilities

      -- opts.capabilities.textDocument.foldingRange = {
      --   dynamicRegistration = false,
      --   lineFoldingOnly = true,
      -- }

      -- require("ufo").setup()

      return opts
    end,
  },
}
