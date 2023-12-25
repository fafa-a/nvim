local utils = require('core.utils')
local cmp_nvim_lsp = utils.requireAndTrack('cmp_nvim_lsp')

local capabilities = cmp_nvim_lsp.default_capabilities()

local function default_confit_builder(attac)
    -- local init_config = true
    local opt = {
        capabilities = capabilities,
        flags = {
            debounce_text_changes = 150,
        },
        --- @param client lsp.Client
        ---@param bufnr integer
        on_attach = function(client, bufnr)
            -- Disable the formatting function and leave it to a special plug-in plug-in for processing
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false

            -- Bind shortcut keys
            require("plugin.mason.lsp.keybind").mapLSP(bufnr)
        end,
    }

    return opt
end

return default_confit_builder
