vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("v", "jk", "<ESC>")

vim.keymap.set("n", "<UP>", "<NOP>")
vim.keymap.set("n", "<DOWN>", "<NOP>")
vim.keymap.set("n", "<RIGHT>", "<NOP>")
vim.keymap.set("n", "<LEFT>", "<NOP>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>,", vim.cmd.Ex)
