local utils = require('core.utils')
local auto_save = utils.requireAndTrack('auto-save')

auto_save.setup({
    debounce_delay = 1000
    -- your config goes here
    -- or just leave it empty :)
})
