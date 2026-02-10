-- lua/robert/core/autocmds.lua

-- Enable relative number in NORMAL / Disable them in INSERT
local relnum_group = vim.api.nvim_create_augroup('robert-relative-number', { clear = true })
vim.api.nvim_create_autocmd('InsertEnter', {
  desc = 'Disable relative numbers in insert mode',
  group = relnum_group,
  callback = function() vim.opt.relativenumber = false end,
})

vim.api.nvim_create_autocmd('InsertLeave', {
  desc = 'Enable relative numbers in normal mode',
  group = relnum_group,
  callback = function() vim.opt.relativenumber = true end,
})

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('robert-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})
