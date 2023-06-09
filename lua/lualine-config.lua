local custom = require'lualine.themes.ayu_dark'
--[[
custom.normal.c.bg = nil
custom.normal.b.bg = nil
custom.insert.b.bg = nil
custom.visual.b.bg = nil
custom.inactive.c.bg = nil
--]]
require('lualine').setup {
	options = {
		theme = custom,
		disabled_filetypes = {'NvimTree'}
	},
	extensions = {'nvim-tree'},
}
