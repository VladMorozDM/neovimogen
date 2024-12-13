-- This file can be loaded by calling `lua require("plugins")` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    use({ "rose-pine/neovim", as = "rose-pine" })
    use({
        "nvim-telescope/telescope.nvim", tag = "0.1.8",
        -- or                            , branch = "0.1.x"
        use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdateSync"}),
        requires = { {"nvim-lua/plenary.nvim"} }
    })
    use("theprimeagen/harpoon")
    use("mbbill/undotree")

    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true }
    })
end)
