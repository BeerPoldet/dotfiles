return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        biome = {
          enabled = true,
          settings = {
            biome = {
              formatter = {
                enabled = false,
              },
            },
          },
        },
        -- TypeScript/JavaScript is handled by the `lang.typescript` extra, which
        -- enables exactly one of tsserver/ts_ls/vtsls/tsgo based on
        -- `vim.g.lazyvim_ts_lsp` (see lua/config/options.lua). Don't disable
        -- vtsls here: the `lang.vue` extra loads @vue/typescript-plugin into it,
        -- so turning it off kills TS in .vue/Nuxt files too.
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

  -- Extra vtsls keymaps that LazyVim's typescript extra doesn't ship.
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local vtsls = opts.servers and opts.servers.vtsls
      if not vtsls then
        return
      end
      vtsls.keys = vtsls.keys or {}
      vim.list_extend(vtsls.keys, {
        {
          "<leader>co",
          LazyVim.lsp.action["source.organizeImports"],
          desc = "Organize Imports",
        },
        {
          "<leader>cu",
          LazyVim.lsp.action["source.removeUnused.ts"],
          desc = "Remove unused imports",
        },
      })
    end,
  },
}
