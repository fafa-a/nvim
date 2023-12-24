local utils = require('core.utils')
local auto_tag = utils.requireAndTrack('auto-tag')

auto_tag.setup({
    autotag = {
        enable = true
    },
    filetypes = { "html", "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte", "vue",
        "xml", "xhtml" }
})
