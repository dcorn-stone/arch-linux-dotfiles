vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true})
vim.keymap.set("n", "<C-l>", "<C-w>k", { noremap = true, silent = true})
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true})
vim.keymap.set("n", "<C-/>", "<cmd>vert term<CR>i")

vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { silent = true })
vim.keymap.set("n", "<leader>bd", "<cmd>Bdelete<CR>", { silent = true })

vim.keymap.set("n", "<C-b>", "<cmd>Neotree toggle<CR>")

vim.keymap.set("n", "<leader>/", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>m", ":VMan ", { noremap = true })

