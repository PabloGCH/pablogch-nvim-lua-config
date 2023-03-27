

vim.o.mouse = a
vim.o.termguicolors = true
vim.o.number = true
vim.o.cursorline = true
vim.o.list = true
vim.o.sidescroll = 1
vim.o.wrap = true
vim.o.breakindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.listchars = 'space: ,tab:| '
vim.o.encoding = 'UTF-8'
vim.o.clipboard = 'unnamedplus'
vim.o.fillchars = 'vert: '
vim.o.sidescroll = 1
vim.o.wrap = true
vim.o.breakindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true

require 'nvim-cmp-config'
require 'nvim-tree-config'
require 'lualine-config'
require 'bufferline-config'
require 'smooth-scroll-config'
require 'mapping'
require 'treesitter-config'

vim.cmd("colorscheme ayu-dark")
