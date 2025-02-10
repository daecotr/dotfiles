local opt	= vim.opt
local wo = vim.wo
local g	= vim.g

-- Background color -- 
vim.cmd [[highlight Normal guibg=#171719]]

-- Mappings --
g.mapleader = " "
g.maplocalleader = "\\"

-- Line numbers --
wo.number = true
wo.relativenumber = true

-- Search --
opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true

-- Tabs --
opt.expandtab = false
opt.smarttab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true
opt.autoindent = true

-- Splits --
opt.splitright = true
opt.splitbelow = true

-- Clipboard buffer --
opt.clipboard = 'unnamedplus'

-- Disable autocomment by <CR> on comment line --
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]
