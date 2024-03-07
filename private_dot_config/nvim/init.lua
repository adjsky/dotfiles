local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
})

local opt = vim.opt

opt.termguicolors = true
opt.number = false

opt.tabstop = 4
opt.expandtab = true
opt.shiftwidth = 4

vim.cmd([[colorscheme catppuccin]])
vim.cmd([[highlight Normal guibg=none]])

