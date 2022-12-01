local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then return end

nvim_tree.setup()

vim.keymap.set('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', { silent = true })
vim.keymap.set('n', '<C-f>', '<Cmd>NvimTreeFocus<CR>', { silent = true })
