vim.fn["fzf#install"]()

vim.keymap.set("n", "<C-p>", ":FZF<CR>")
vim.keymap.set("i", "<C-p>", ":FZF<CR>")

vim.g.fzf_command_prefix = "rg --files -g '!node_modules'"
