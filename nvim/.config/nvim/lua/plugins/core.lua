return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "help",
        "html",
        "javascript",
        "json",
        "json5",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "rust",
        "swift",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
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
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "rust-analyzer",
        "tailwindcss-language-server",
        "prettierd",
      },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    commit = "29be0919b91fb59eca9e90690d76014233392bef",
  }
}
