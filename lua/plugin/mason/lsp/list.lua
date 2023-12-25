local servers = {
  bashls = {},
  dockerls = {},
  emmet_ls = {},
  html = {},
  -- jedi_language_server"={ },
  jsonls = {},
  lua_ls = { Lua = {
    workspace = {
      checkThirdParty = false,
    },
    telemetry = {
      enable = false,
    },
  } },
  marksman = {},
  -- pylsp={                 },
  pyright = {},
  ruff_lsp = {},
  rust_analyzer = {},
  -- sqlls={ },
  svelte = {},
  -- tailwindcss={ },
  -- tsserver={ },
  vimls = {},
  -- volar={         },
  yamlls = {},
}

local servers_exclude = { rust_analyzer }

return {
  servers = servers,
  servers_exclude = servers_exclude,
}
