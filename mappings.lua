--[[ OPTIONS ]]
-- For tabs size and indeneting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- For setting relative line numbers 
vim.opt.rnu = true

-- Show the current cursor line number instead of 0
vim.opt.nu = true

-- When there is a previous search pattern, highlight all its matches.
vim.opt.hlsearch = true

-- Highlight the current line
vim.opt.cursorline = true

-- Always let n lines before EOF , to keep the cursor on the middle 
vim.opt.scrolloff = 12

-- Set cursor shape to block (if you're a real one)
vim.opt.guicursor = "n-v-i-c:block-Cursor"
-- vim.opt.list = true
-- Enable those to replace spaces and tabs with symbols
-- vim.opt.listchars = { tab = '. ' , trail = '·', nbsp = '␣' }




--[[ Keymappings - shortcuts ]]

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('t', '<C-w>w', '<cmd><C-w>w<CR>')
vim.keymap.set("n", "<C-s>", ":wa<CR>")
vim.keymap.set("n", "<space>gb", ":Ex<CR>")
