local utils = require('core.utils')
local conform = utils.requireAndTrack('conform')

conform.setup({
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
    formatters_by_ft = {
        html = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        json = { "prettierd" },
        jsonc = { "prettierd" },
        rust = { "rustfmt" },
        bash = { "shfmt" },
        lua = { "stylua" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
        vue = { "prettierd" },
        svelte = { "prettierd" },
        python = {
            "isort",
            "black",
        },
        markdown = {
            "prettierd",
            "markdownlint",
        },
    },
})
