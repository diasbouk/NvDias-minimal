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
vim.opt.laststatus = 3

-- Always let n lines before EOF , to keep the cursor on the middle 
vim.opt.scrolloff = 12

-- Set cursor shape to block (if you're a real one)
vim.opt.guicursor = "n-v-i-c:block-Cursor"
-- vim.opt.list = true
-- Enable those to replace spaces and tabs with symbols
-- vim.opt.listchars = { tab = '. ' , trail = '·', nbsp = '␣' }

vim.opt.fillchars = vim.opt.fillchars + 'vert:│'
-- Set the fill characters for horizontal split
vim.opt.fillchars = vim.opt.fillchars + 'horiz:─'

-- Customize the highlight group for split separators to white
-- vim.cmd [[highlight WinSeparator guifg=#ffffff guibg=NONE]]
-- vim.cmd [[highlight VertSplit guifg=#ffffff guibg=NONE]]

function OpenBottomTerminal()
    vim.cmd('belowright split')
    vim.cmd('resize 10')
    vim.cmd('term')
    vim.cmd('startinsert')
end


--[[ Keymappings - shortcuts ]]

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('t', '<C-w>w', '<cmd><C-w>w<CR>')
vim.keymap.set('n', '<space>h', ':lua OpenBottomTerminal()<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":wa<CR>")
vim.keymap.set("n", "<space>gb", ":Ex<CR>")
vim.cmd("tnoremap <A-w> <C-\\><C-N><C-w>w")
vim.cmd("tnoremap <A-j> <C-\\><C-N><C-w>j")
vim.cmd("tnoremap <C-k> <C-\\><C-N><C-w>k")
vim.cmd("tnoremap <A-l> <C-\\><C-N><C-w>l")
