return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      -- linters = {
      --   markdownlint = {
      --     args = { "--disable", "MD013", "--" },
      --   },
      -- },
      linters_by_ft = {
        markdown = {}, -- Empties the linter list for markdown files
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    -- enabled = aflse
    opts = {
      win_options = {
        conceallevel = { default = 0, rendered = 0 },
        concealcursor = { default = "", rendered = "" },
      },
      scroll_sync = false,
    },
  },
  -- {
  --   "selimacerbas/markdown-preview.nvim",
  --   dependencies = { "selimacerbas/live-server.nvim" },
  --   opts = {
  --     -- all optional; sane defaults shown
  --     instance_mode = "takeover", -- "takeover" (one tab) or "multi" (tab per instance)
  --     open_browser = true,
  --     -- port = 8422, -- 0 = auto (8421 for takeover, OS-assigned for multi)
  --     -- default_theme = "dark", -- "dark" or "light"; initial preview theme
  --     debounce_ms = 300,
  --     scroll_sync = false,
  --   },
  -- },
}
