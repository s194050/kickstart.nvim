local go = vim.g
local o = vim.opt

-- Optimizations on startup
vim.loader.enable()

-- Personal Config and LazyVim global options
go.lualine_info_extras = false
go.codeium_cmp_hide = false
go.lazygit_config = false

-- Define leader key
go.mapleader = " "
go.maplocalleader = "\\"

-- Autoformat on save (Global)
go.autoformat = false

-- Font
go.gui_font_default_size = 10
go.gui_font_size = go.gui_font_default_size
go.gui_font_face = "JetBrainsMono Nerd Font"

-- Enable EditorConfig integration
go.editorconfig = true

-- Root dir detection
go.root_spec = {
  "lsp",
  { ".git", "lua", ".obsidian", "package.json", "Makefile", "go.mod", "cargo.toml", "pyproject.toml", "src" },
  "cwd",
}

-- Rust stuff
-- vim.g.rustaceanvim = {
--   -- Plugin configuration
--   tools = {},
--   -- LSP configuration
--   server = {
--     on_attach = function(client, bufnr)
--       -- you can also put keymaps in here
--     end,
--     default_settings = {
--       -- rust-analyzer language server configuration
--       ["rust-analyzer"] = {
--         files = {
--           excludeDirs = {
--             "_build",
--             ".dart_tool",
--             ".flatpak-builder",
--             ".git",
--             ".gitlab",
--             ".gitlab-ci",
--             ".gradle",
--             ".idea",
--             ".next",
--             ".project",
--             ".scannerwork",
--             ".settings",
--             ".venv",
--             "archetype-resources",
--             "bin",
--             "hooks",
--             "node_modules",
--             "po",
--             "screenshots",
--             "target",
--           },
--         },
--       },
--     },
--   },
  -- DAP configuration
  -- dap = {},
-- }
-- Disable annoying cmd line stuff
o.showcmd = false
o.laststatus = 3
o.cmdheight = 0

-- Enable spell checking
o.spell = true
o.spelllang:append("es")

-- Backspacing and indentation when wrapping
o.backspace = { "start", "eol", "indent" }
o.breakindent = true

-- Smoothscroll
if vim.fn.has("nvim-0.10") == 1 then
  o.smoothscroll = true
end

o.conceallevel = 2
