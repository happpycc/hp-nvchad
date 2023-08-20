-- custom/configs/null-ls.lua

local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.stylua,
  formatting.black,
  diagnostics.mypy,
  diagnostics.ruff,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
