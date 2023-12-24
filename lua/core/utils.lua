local opt = { noremap = true, silent = true }

local function map(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, opt)
end

local function requireAndTrack(packageName)
  local status, package = pcall(require, packageName)
  if status then
    return package
  else
    vim.notify("Not found: " .. packageName)
  end
end

return {
  map = map,
  requireAndTrack = requireAndTrack
}
