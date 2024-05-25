return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        ---@type table<string, boolean>
        local added = {}
        opts.ensure_installed = vim.tbl_filter(function(lang)
          if added[lang] then
            return false
          end
          added[lang] = true
          return true
        end, opts.ensure_installed)
      end
      -- for windows, clang or zig should be used
      local install = require("nvim-treesitter.install")
      install.compilers = { "clang" , "zig" }
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}

