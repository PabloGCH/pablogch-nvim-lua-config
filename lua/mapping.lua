
--BASIC MAPPING
--====================================================================
-- Quit without saving
vim.keymap.set('n', '<A-d>', ':qa!<CR>', {noremap = true})
-- Open terminal
vim.keymap.set('n', '<A-a>', ':term<CR>', {noremap = true})
-- Save file
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true})
-- Quit terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
-- Move selected rows up
vim.keymap.set('v', '<A-j>', ':m \'>+1<CR>gv=gv', {noremap = true})
-- Move selected rows down
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR>gv=gv', {noremap = true})



--NVIM-TREE
--====================================================================
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true})

--BUFFERLINE
--====================================================================
-- Move to previous/next
vim.keymap.set('n', '<A-l>', ':BufferLineCycleNext<CR>', {noremap = true})
vim.keymap.set('n', '<A-h>', ':BufferLineCyclePrev<CR>', {noremap = true})
-- Re-order to previous/next
vim.keymap.set('n', '<A-<>', ':BufferLineMovePrev<CR>', {noremap = true})
vim.keymap.set('n', '<A->>', ':BufferLineMoveNext<CR>', {noremap = true})
-- Close buffer
vim.keymap.set('n', '<A-c>', ':Bdelete!<CR>', {noremap = true, silent = true})
-- Jump to buffer
vim.keymap.set('n', '<A-1>', ':lua require("bufferline").go_to_buffer(1, true)<CR>', {noremap = true})
vim.keymap.set('n', '<A-2>', ':lua require("bufferline").go_to_buffer(2, true)<CR>', {noremap = true})
vim.keymap.set('n', '<A-3>', ':lua require("bufferline").go_to_buffer(3, true)<CR>', {noremap = true})
vim.keymap.set('n', '<A-4>', ':lua require("bufferline").go_to_buffer(4, true)<CR>', {noremap = true})
vim.keymap.set('n', '<A-5>', ':lua require("bufferline").go_to_buffer(5, true)<CR>', {noremap = true})
vim.keymap.set('n', '<A-6>', ':lua require("bufferline").go_to_buffer(6, true)<CR>', {noremap = true})
vim.keymap.set('n', '<A-7>', ':lua require("bufferline").go_to_buffer(7, true)<CR>', {noremap = true})
vim.keymap.set('n', '<A-8>', ':lua require("bufferline").go_to_buffer(8, true)<CR>', {noremap = true})
vim.keymap.set('n', '<A-9>', ':lua require("bufferline").go_to_buffer(9, true)<CR>', {noremap = true})




