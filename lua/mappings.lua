function OpenBottomTerminal()
	vim.cmd("belowright split")
	vim.cmd("resize 16")
	vim.cmd("term")
	vim.cmd("startinsert")
end

--[[ Keymappings - shortcuts ]]

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("t", "<C-w>w", "<cmd><C-w>w<CR>")
vim.keymap.set("n", "<space>h", ":lua OpenBottomTerminal()<CR>", { noremap = true, silent = true })
vim.cmd("nnoremap <space>ca <cmd>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<C-s>", ":wa<CR>")
vim.keymap.set("n", "<space>gb", ":Oil<CR>")
vim.cmd("tnoremap <C-w> <C-\\><C-N><C-w>")
vim.cmd("tnoremap <A-j> <C-\\><C-N><C-w>j")
vim.cmd("tnoremap <C-k> <C-\\><C-N><C-w>k")
vim.cmd("tnoremap <A-l> <C-\\><C-N><C-w>l")
