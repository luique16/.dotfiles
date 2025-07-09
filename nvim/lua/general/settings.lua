local opt = vim.opt
local g = vim.g

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Indentação
opt.autoindent = true
opt.shiftround = true
opt.smarttab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true

-- Search
opt.smartcase = true

-- Performance
opt.lazyredraw = true

-- Text rendering
opt.display:append("lastline")
opt.encoding = "utf-8"
opt.linebreak = true
opt.scrolloff = 8
opt.sidescrolloff = 10
opt.wrap = false

-- UI
opt.ruler = true
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.wildmenu = true
opt.showmatch = true
opt.clipboard = "unnamedplus"
opt.hidden = true
opt.guicursor = "n-v-c:block"

