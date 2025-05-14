-- Delete this condition if you want to execute the file
if true then
  return {}
end

-- Example of disabling some plugins. Add yours
local disabled = {
  -- {
  --   "akinsho/bufferline.nvim",
  -- },
  -- {
  --   "nvim-lualine/lualine.nvim",
  -- },
  -- { "saghen/blink.cmp" },
  -- { "mrcjkb/rustaceanvim" },
}

for i, plugin in ipairs(disabled) do
  plugin.enabled = false
end

return disabled
