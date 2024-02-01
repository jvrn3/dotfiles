local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

vim.g.mapleader = ','
vim.opt.number = true
vim.opt.ruler = true
vim.opt.mouse ='a'
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.smartcase = true
vim.opt.title = true

vim.opt.tabstop=2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shell = "fish"

vim.opt.scrolloff=3

local keymap = vim.keymap


-- Mappings 
keymap.set('i', 'jk', '<esc>') 
keymap.set('n', 'gn', ':bn<cr>')
keymap.set('n', 'gp', ':bp<cr>')
keymap.set('n', 'gd', ':bd<cr>')


keymap.set('n', '<leader>t', ':tabnew<cr>')
keymap.set('n', '<leader>e', ':tabedit')
keymap.set('n', '<leader>c', ':tabclose')
keymap.set('n', '<leader>n', ':tabnext<cr>')
keymap.set('n', '<leader>p', ':tabprevious<cr>')

keymap.set('n', '<Space>', 'za')
keymap.set('n', 'z0', 'zR')
keymap.set('n', 'zC', 'zM')

keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

keymap.set('n', '<C-e>', '3<C-e>')
keymap.set('n', '<C-y>', '3<C-y>')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")


-- should do fugitive zstuff
--
-- should do compilation stuff
--
--
--
--
