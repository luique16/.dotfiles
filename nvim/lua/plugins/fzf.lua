vim.g.fzf_command_prefix = "rg --files -g '!node_modules'"
vim.g.fzf_files_command = "rg --files -g '!node_modules'"

vim.keymap.set("n", "<C-p>", ":Files<CR>", { noremap = false })
