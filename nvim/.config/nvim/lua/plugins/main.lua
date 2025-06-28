return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "swiftlint",
        "tailwindcss-language-server",
        "terraform-ls",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        enable = true,
        disable = { "swift", "text" },
      },
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "json5",
        "jsdoc",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "rust",
        "swift",
        "terraform",
        "tsx",
        "typescript",
        "tsx",
        "vim",
        "yaml",
      },
    },
  },
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
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
