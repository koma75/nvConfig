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

require("vim-options")
require("lazy").setup("plugins")

local prefix
if vim.fn.has("win32") == 1 then
  -- spzenhan only for Windows
  prefix = vim.fn.expand("$LOCALAPPDATA") .. "/nvim"
  vim.cmd("source " .. prefix .. "/vimscript/spzenhan/spzenhan.vim")
end

