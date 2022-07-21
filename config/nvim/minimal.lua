-- Minimal config for testing
-- local vim = vim
-- vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath

vim.opt.termguicolors = true
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/popup.nvim','nvim-lua/plenary.nvim'}
  }
end)

local tele = require('telescope')

vim.cmd[[noremap <silent><C-f> <cmd>lua require'telescope.builtin'.find_files({})<CR>]]

tele.setup{}
