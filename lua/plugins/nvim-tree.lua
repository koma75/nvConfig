return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      filters = { dotfiles = false, },
      view = {
        adaptive_size = false,
        side = "left",
        width = 30,
        preserve_window_proportions = true,
      },
      git = {
        enable = true,
        ignore = true,
      },
      renderer = {
        root_folder_label = false,
        highlight_git = true,
        highlight_opened_files = "none",

        indent_markers = {
          enable = true,
        },

        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },

          glyphs = {
            default = "󰈚",
            symlink = "",
            folder = {
              -- default = "",
              empty = "",
              empty_open = "",
              open = "",
              symlink = "",
              symlink_open = "",
              arrow_open = "",
              arrow_closed = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
    }
    vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window" })
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Nvimtree Focus window" })
  end,
}
