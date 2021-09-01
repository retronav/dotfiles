local utils = require('config/utils')

local cmd = vim.cmd

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'set mouse=a'
cmd 'set colorcolumn=80'
cmd 'let g:neovide_remember_window_size = v:true'

utils.opt('o', 'hidden', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('w', 'number', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'relativenumber', true)
utils.opt('o', 'mouse', 'a')
utils.opt('o', 'completeopt', 'menuone,noinsert,noselect')
utils.opt('o', 'tabstop', 4)
utils.opt('o', 'softtabstop', 4)
utils.opt('o', 'shiftwidth', 4)
utils.opt('o', 'expandtab', true)

vim.cmd 'set guifont=Victor\\ Mono:h18'
-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

