return {
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
}
