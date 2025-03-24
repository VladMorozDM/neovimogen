require("naves.remap")
require("naves.set")


local esc = vim.api.nvim_replace_termcodes("<ESC>", true, true, true)
vim.fn.setreg("p", '^f:lyt]oplatformio run -e '..esc..'p^"+Yddku')
vim.fn.setreg("P", '^f:lyt]oplatformio run -t upload -e '..esc..'p^"+Yddku')
