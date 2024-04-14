return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      -- configure treesitter
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true }
      })

      -- for windows, clang or zig should be used
      local install = require('nvim-treesitter.install')
      install.compilers = { "zig", "clang" } 
    end
  }
}
