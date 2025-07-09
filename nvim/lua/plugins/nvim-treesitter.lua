require'nvim-treesitter.configs'.setup {
    ensure_installed = { "lua", "javascript", "typescript", "go" },
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true }
}
