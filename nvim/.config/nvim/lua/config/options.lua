-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mouse = ""
vim.opt.clipboard = ""
vim.opt.conceallevel = 0
vim.opt.swapfile = false

vim.g.autoformat = false
vim.g.lazyvim_prettier_needs_config = true

-- TypeScript LSP: "vtsls" | "tsgo"
-- Staying on vtsls: tsgo (TypeScript 7 native) is much faster but cannot load
-- tsserver plugins yet, so it can't type-check .vue templates (Nuxt work).
-- See https://github.com/vuejs/language-tools/issues/5381
vim.g.lazyvim_ts_lsp = "vtsls"

-- vim.g.snacks_animate = false

-- Machine-local overrides (not tracked in git)
local local_config = vim.fn.expand("~/.config/nvim/local.lua")
if vim.fn.filereadable(local_config) == 1 then
  dofile(local_config)
end
