require("lazy").setup({
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("everforest").setup({
        background = "medium",
        italics = true,
    })
    vim.cmd("set background=light")
  end
})