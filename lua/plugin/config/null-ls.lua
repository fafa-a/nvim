local utils = require('core.utils')
local null_ls = utils.requireAndTrack('null-ls')
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.formatting.black,
    }
})
