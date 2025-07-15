local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
            "git", "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable",
            lazypath,
        })
    end

    vim.opt.rtp:prepend(lazypath)

    require("lazy").setup({
        -- LSP
        {
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
            config = function() require("plugins.nvim-treesitter") end,
        },
        {
            'neovim/nvim-lspconfig',
            dependencies = {
                "stevearc/conform.nvim",
                "williamboman/mason.nvim",
                "williamboman/mason-lspconfig.nvim",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                "hrsh7th/nvim-cmp",
                "L3MON4D3/LuaSnip",
                "saadparwaiz1/cmp_luasnip",
                "j-hui/fidget.nvim",
            },
            config = function() require("plugins.lsp") end
        },

        -- Airline
        { "vim-airline/vim-airline", config = function() require("plugins.airline") end },
        { "vim-airline/vim-airline-themes" },

        -- Nerdcommenter
        { "preservim/nerdcommenter" },

        -- Multi-cursor
        { "mg979/vim-visual-multi" },

        -- Rooter
        { "airblade/vim-rooter" },

        -- Tagalong
        { "AndrewRadev/tagalong.vim" },

        -- Indent line
        {
            "lukas-reineke/indent-blankline.nvim",
            main = "ibl",
            opts = {},
        },

        -- Nvim-tree
        {
            "nvim-tree/nvim-tree.lua",
            dependencies = { "nvim-tree/nvim-web-devicons" },
            config = function() require("plugins.nvim-tree") end,
        },

        -- Leap
        {
            "ggandor/leap.nvim",
            dependencies = {
                "tpope/vim-repeat",
            },
            config = function() require("plugins.leap") end
        },

        -- Be good
        { "ThePrimeagen/vim-be-good" },
        { 'vuciv/golf' },

        -- FZF
        {
            "junegunn/fzf",
            build = ":call fzf#install()"
        },
        {
            "junegunn/fzf.vim",
            config = function() require("plugins.fzf") end,
        },

        -- Temas
        { "ellisonleao/gruvbox.nvim" },
        { "datsfilipe/min-theme.nvim" },
        {
            "rose-pine/neovim",
            name = "rose-pine",
            config = function() require("plugins.rose-pine") end,
        },

        -- Auto-pairs
        {
            'windwp/nvim-autopairs',
            event = "InsertEnter",
            config = true
        },

        -- Supermaven AI
        {
            "supermaven-inc/supermaven-nvim",
            config = function() require("plugins.supermaven") end,
        },
    }
)
