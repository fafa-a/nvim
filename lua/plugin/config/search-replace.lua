local utils = require('core.utils')
local search_replace = utils.requireAndTrack('search-replace')
search_replace.setup({
    -- optionally override defaults
    default_replace_single_buffer_options = 'gcI',
    default_replace_multi_buffer_options = 'egcI'
})
