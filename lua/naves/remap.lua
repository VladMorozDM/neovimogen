vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("v", "jk", "<ESC>")

vim.keymap.set("n", "<UP>", "<NOP>")
vim.keymap.set("n", "<DOWN>", "<NOP>")
vim.keymap.set("n", "<RIGHT>", "<NOP>")
vim.keymap.set("n", "<LEFT>", "<NOP>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
