--[[ OPTIONS ]]

-- Theme
--[[ vim.cmd.colorscheme("tokyonight-night") ]]

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

--[[ For background transparency ]]
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

-- Customize the highlight group for split separators to white
vim.cmd [[highlight WinSeparator guifg=#ffffff guibg=NONE]]
vim.cmd [[highlight VertSplit guifg=#ffffff guibg=NONE]]


--[[ Disable options in terminal mode ]]

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.opt_local.relativenumber = false
    vim.opt_local.number = false
  end
})
