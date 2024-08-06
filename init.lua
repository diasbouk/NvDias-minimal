												--[[ STARTING POINT TO NEOVIM CONFIG ]]


-- Installing a plugin manager (lazyvim )
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
---@diagnostic disable-next-line: unused-local
local opts = {}

-- Importing plugins and other lua file
require("lazy").setup("plugins")
require("mappings")
require("nvim-options")
