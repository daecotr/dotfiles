local map = vim.api.nvim_set_keymap

function nm(key, command) 
	map('n', key, command, {noremap = true})
end

function im(key, command)
	map('i', key, command, {noremap = true})
end

function vm(key, command)
	map('v', key, command, {noremap = true})
end

function tm(key, command)
	map('t', key, command, {noremap = true})
end

-- Main --

-- Split movement --
nm('<leader>l', '<C-W>l')
nm('<leader>h', '<C-W>h')
nm('<leader>j', '<C-W>j')
nm('<leader>k', '<C-W>k')

-- Space+space for enter to normal mode --
im('<C-B>', '<esc>')

-- Plugins --

-- NeoTree --
nm('<leader>d', ':Neotree toggle left<cr>')
nm('<leader>s', ':Neotree toggle float<cr>')

-- Resize --
nm('<C-S-l>', ":lua require('resize').ResizeRight()<CR>")
nm('<C-S-h>', ":lua require('resize').ResizeLeft()<CR>")
nm('<C-S-j>', ":lua require('resize').ResizeDown()<CR>")
nm('<C-S-k>', ":lua require('resize').ResizeUp()<CR>")

-- LSP --
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })
