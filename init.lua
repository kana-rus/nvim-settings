vim.cmd[[command! PackerInstall packadd packer.nvim | lua require'packers'.install()]]
vim.cmd[[command! PackerUpdate packadd packer.nvim | lua require'packers'.update()]]
vim.cmd[[command! PackerSync packadd packer.nvim | lua require'packers'.sync()]]
vim.cmd[[command! PackerClean packadd packer.nvim | lua require'packers'.clean()]]
vim.cmd[[command! PackerCompile packadd packer.nvim | lua require'packers'.compile()]]

vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

require('plugins')


local opt = vim.opt
-- opt.mouse = 'a'
-- if !exists('g:vscode') then
--    opt.ambiwidth = 'double'
-- end
opt.number = true
opt.smartindent = true
opt.showmatch = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.ignorecase = true
opt.smartcase = true
opt.helplang = 'ja'
opt.virtualedit = 'onemore'
opt.encoding = 'utf8'
-- opt.clipboard:append({ 'unnamedplus' })  -- this doesn't work

vim.api.nvim_set_keymap('i', 'jj', '<Esc>:w<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files --hidden=true<cr>', {noremap = true})

vim.api.nvim_set_keymap('i', '()', '()<Left>', {noremap = true})
vim.api.nvim_set_keymap('i', '{}', '{}<Left>', {noremap = true})
vim.api.nvim_set_keymap('i', '[]', '[]<Left>', {noremap = true})
-- vim.api.nvim_set_keymap('i', '\'', '\'\'<Left>', {noremap = true})
vim.api.nvim_set_keymap('i', '\"', '\"\"<Left>', {noremap = true})
-- vim.api.nvim_set_keymap('n', 'tr', ':Neotree<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', '{<Enter>', '{}<Left><CR><Esc><S-o>', {noremap = true})
vim.api.nvim_set_keymap('i', '(<Enter>', '()<Left><CR><Esc><S-o>', {noremap = true})
vim.api.nvim_set_keymap('i', '[<Enter>', '[]<Left><CR><Esc><S-o>', {noremap = true})

vim.api.nvim_set_keymap('n', '<C-a>', '^', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-e>', 'g_', {noremap = true})
