-- in here come the keymaps and vim options that aree not plugin specific. Plugin specific keymaps can be found in their respective lua file under plugins/
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.number = true
vim.wo.relativenumber = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.clipboard = 'unnamedplus'
vim.o.hlsearch = false
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- makes so enter does not autoselect autocomplete
vim.o.completeopt = 'menuone,noselect'
-- vim.o.termguicolors = true
-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

