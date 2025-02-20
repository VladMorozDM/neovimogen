return {
    { "nvim-telescope/telescope.nvim", version = "0.1.6" },

    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdateSync" },
    { "nvim-treesitter/nvim-treesitter-context", dependencies = { "nvim-lua/plenary.nvim" } },

    "theprimeagen/harpoon",

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", "archibate/lualine-time", lazy = true }
    },
    --#lsp snippet suggestion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-look",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",
    --#endregion
    { "catppuccin/nvim", name = "catppuccin", opts = { transparent_background = true }  },
    "ThePrimeagen/vim-be-good",
    -- lazy.nvim
    -- Lua
    {
        "folke/persistence.nvim",
        event = "BufReadPre", -- this will only start session saving when an actual file was opened
        opts = {
            -- add any custom options here
        }
    },
    "skwee357/nvim-prose",
    {
        "epwalsh/obsidian.nvim",
        version = "*",  -- recommended, use latest release instead of latest commit
        lazy = true,
        ft = "markdown",
        -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
        -- event = {
            --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
            --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
            --   -- refer to `:h file-pattern` for more examples
            --   "BufReadPre path/to/my-vault/*.md",
            --   "BufNewFile path/to/my-vault/*.md",
            -- },
            dependencies = {
                -- Required.
                "nvim-lua/plenary.nvim",

                -- see below for full list of optional dependencies 👇
            },
            opts = {
                workspaces = {
                    {
                        name = "роман",
                        path = "~/vaults/роман",
                    },
                },

                daily_notes = {
                    folders = "щоденник",
                    -- Optional, if you want to change the date format for the ID of daily notes.
                    date_format = "%Y-%m-%d",
                    -- Optional, if you want to change the date format of the default alias of daily notes.
                    alias_format = "%B %-d, %Y",
                    -- Optional, default tags to add to each new daily note created.
                    default_tags = { "daily-notes" },
                    -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
                    template = nil
                },
                note_id_func = function(title)
                    return title
                end,
                -- see below for full list of options 👇
            },
        },
        {
            'MeanderingProgrammer/render-markdown.nvim',
            dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
            -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
            -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
            ---@module 'render-markdown'
            ---@type render.md.UserConfig
            opts = {},
        },
        {
            "kylechui/nvim-surround",
            version = "*", -- Use for stability; omit to use `main` branch for the latest features
            event = "VeryLazy",
            config = function()
                require("nvim-surround").setup({
                    -- Configuration here, or leave empty to use defaults
                })
            end
        }
    }
