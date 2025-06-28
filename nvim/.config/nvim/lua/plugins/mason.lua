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
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
