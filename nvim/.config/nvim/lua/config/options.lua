-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mouse = ""
vim.opt.clipboard = ""
vim.opt.conceallevel = 0
vim.opt.swapfile = false

vim.g.autoformat = false
vim.g.lazyvim_prettier_needs_config = true

-- vim.g.snacks_animate = false

-- Machine-local overrides (not tracked in git)
local local_config = vim.fn.expand("~/.config/nvim/local.lua")
if vim.fn.filereadable(local_config) == 1 then
  dofile(local_config)
end
