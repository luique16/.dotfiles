require("conform").setup({
    formatters_by_ft = {}
})

local cmp = require('cmp')

require("mason").setup()
local mason_lspconfig = require("mason-lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities()

mason_lspconfig.setup({
    ensure_installed = {
        'lua_ls',
        'ts_ls',
        'rust_analyzer',
        'gopls',
        'bashls',
        'jsonls',
        'yamlls',
        'html',
        'cssls',
        'vimls',
        'pyright',
    },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup {
                capabilities = capabilities,
            }
        end,
    },
})

require("fidget").setup({})

local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-l>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    })
})

vim.diagnostic.config({
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
    virtual_text = {
        prefix = '      ██ ',
        spacing = 4,
    },
    underline = true,
    signs = true,
    update_in_insert = true,
})
