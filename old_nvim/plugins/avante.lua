require('avante').setup({
    provider = "copilot",
    providers = {
        copilot = {
            model = "gpt-3.5-turbo"
        }
    }
})

require('avante_lib').load()
