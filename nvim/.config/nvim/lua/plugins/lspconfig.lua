return {
  {
    "neovim/nvim-lspconfig",
    -- @class PluginLspOpts
    opts = {
      -- @type lspconfig.options
      servers = {
        -- tsserver will be automatically installed with mason and loaded with lspconfig
        tsserver = {
          enabled = false,
        },
        ts_ls = {
          enabled = false,
        },
        vtsls = {
          enabled = true,
        },
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
              },
              -- check = {
              --   command = "clippy",
              -- },
              checkOnSave = {
                allFeatures = true,
                command = "clippy",
                -- optional
                extraArgs = {
                  "--",
                  "--no-deps",
                  "-Dclippy::correctness",
                  "-Dclippy::complexity",
                  "-Wclippy::perf",
                  "-Wclippy::pedantic",
                },
              },
            },
          },
        },
        sourcekit = {
          enabled = true,
          setup = {
            capabilities = {
              workspace = {
                didChangeWatchedFiles = {
                  dynamicRegistration = true,
                },
              },
            },
          },
        },
      },
    },
  },
}
