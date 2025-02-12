local obsidian = require("obsidian")
vim.keymap.set("n", "gf", function()
    if obsidian.util.cursor_on_markdown_link() then
        return "<cmd>ObsidianFollowLink<CR>"
    else
        return "gf"
    end
end, { noremap = false, expr = true })
vim.keymap.set("n", "<leader>or", function ()
    vim.cmd "e ~/vaults/роман/зачаток.md"
end, { desc = "Відкриває роман" })
vim.keymap.set("n", "<leader>oo", function ()
    vim.cmd "e ~/vaults/work/todo.md"
end, { desc = "Відкриває todo" })
vim.keymap.set("n", "<leader>oj", function ()
   vim.cmd "ObsidianToday"
end, { desc = "відкриває нотатку на сьогодні" })
vim.keymap.set("n", "<leader>oc", function ()
    vim.cmd "ObsidianToggleCheckbox"
    vim.cmd "ObsidianToggleCheckbox"
    vim.cmd "ObsidianToggleCheckbox"
    vim.cmd "ObsidianToggleCheckbox"
end, { desc = "змінює статус чекбокса" })
vim.keymap.set("v", "<leader>ol", function ()
    vim.cmd "ObsidianLinkNew"
end, { desc = "створює новий лінк з виділеного тексту" })
