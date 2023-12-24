local ls = require("luasnip")
local fmt = require('luasnip.extras.fmt').fmt
-- some shorthands...
local s = ls.snippet
local node = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

-- load snippets from directory
require("luasnip/loaders/from_vscode").lazy_load({
  paths = {
    vim.fn.stdpath('config') .. '/snippets',
  }
})

print(vim.fn.stdpath('config') .. '/snippets')

ls.add_snippets(nil, {
})
