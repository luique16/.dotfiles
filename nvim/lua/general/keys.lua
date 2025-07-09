local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Terminal mode: ESC pra normal mode
keymap("t", "<Esc>", [[<C-\><C-n>]], opts)

-- ESC no normal: limpa highlight de busca
keymap("n", "<Esc>", ":noh<CR><Esc>", opts)

-- DELETE deleta sem registrar
keymap("n", "<Del>", 'v"_d<ESC>', opts)
keymap("v", "<Del>", '"_d', opts)

-- Indentação melhor no visual
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Wrap de seleção com parênteses, chaves, colchetes, aspas
keymap("v", "(", "<ESC>`>a)<ESC>`<i(<ESC>", opts)
keymap("v", "{", "<ESC>`>a}<ESC>`<i{<ESC>", opts)
keymap("v", "[", "<ESC>`>a]<ESC>`<i[<ESC>", opts)
keymap("v", '<leader><', "<ESC>`>a><ESC>`<i<<ESC>", opts)
keymap("v", '"', '<ESC>`>a"<ESC>`<i"<ESC>', opts)
keymap("v", "'", "<ESC>`>a'<ESC>`<i'<ESC>", opts)

-- Y yank até o fim da linha
keymap("n", "Y", "y$", opts)

-- Ctrl+Space pra sair do insert/normal
keymap("i", "<C-Space>", "<Esc>", opts)
keymap("n", "<C-Space>", "<Esc>", opts)

-- Visual até fim/início da linha
keymap("n", "<leader>v", "v$", opts)
keymap("n", "<leader>V", "v0", opts)

-- _ pula pro fim da linha
keymap("n", "_", "$", opts)

-- Insert mode navegação
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-h>", "<Left>", opts)

-- Mover linhas visual
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Centrar ao mover/pesquisar
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Terminal novo
keymap("n", "<C-t>", ":terminal<CR>a", opts)

-- Terminal ESC alternativo
keymap("t", "<C-@>", "<Esc>", opts)

-- Insert linha acima/abaixo sem sair do modo normal
keymap("n", "M", ":call append(line('.')-1, '')<CR>", opts)
keymap("n", "m", ":call append(line('.'), '')<CR>", opts)

-- Terminal ESC e Ctrl+Space como <C-c>
keymap("t", "<Esc>", "<C-c>", opts)
keymap("t", "<C-Space>", "<C-c>", opts)

