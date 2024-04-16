return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls" },
        automatic_installation = true,
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({}) -- JS,TS
      -- lspconfig.solargraph.setup({}) -- Ruby
      lspconfig.html.setup({}) -- HTML
      lspconfig.lua_ls.setup({}) -- Lua
      -- lspconfig.bashls.setup({}) -- Bash
      lspconfig.clangd.setup({}) -- C,C++
      lspconfig.cmake.setup({}) -- CMake
      lspconfig.cssls.setup({}) -- CSS
      lspconfig.jsonls.setup({}) -- JSON
      -- lspconfig.autotools_ls.setup({}) -- Automake, Make
      lspconfig.pyright.setup({}) -- Python
      -- lspconfig.rust_analyzer.setup({}) -- Rust
      lspconfig.taplo.setup({}) -- TOML
      lspconfig.yamlls.setup({}) -- YAML
      lspconfig.zls.setup({}) -- Zig

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
