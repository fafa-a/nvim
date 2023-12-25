local utils = require 'core.utils'
local neodev = utils.requireAndTrack 'neodev'
neodev.setup {}
return {
  settings = {
    Lua = {
      workspace = {
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
