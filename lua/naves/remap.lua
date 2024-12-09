vim.g.mapleader = " "

vim.keymap.set("v", "j", "k")
vim.keymap.set("v", "k", "j")
vim.keymap.set("n", "j", "k")
vim.keymap.set("n", "k", "j")

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("v", "jk", "<ESC>")

vim.keymap.set("n", "<leader>,", vim.cmd.Ex)

