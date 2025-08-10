return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opt = {
        filesystem = {
            filtered_items = {
                visible = false,
                hide_dotfiles = true,
                hide_gitignored = true,
                hide_by_name = {
                    "node_modules"
                },
                hide_by_pattern = { -- uses glob style patterns
                  --"*.meta",
                  --"*/src/*/tsconfig.json",
                },
                always_show = { -- remains visible even if other settings would normally hide it
                  ".gitignored",
                },
                always_show_by_pattern = { -- uses glob style patterns
                  --".env*",
                },
                never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
                  --".DS_Store",
                  --"thumbs.db"
                },
                never_show_by_pattern = { -- uses glob style patterns
                  --".null-ls_*",
                },
            }
        }
    }
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim", -- makes sure that this loads after Neo-tree.
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
  {
    "s1n7ax/nvim-window-picker",
    version = "2.*",
    config = function()
      require("window-picker").setup({
        filter_rules = {
          include_current_win = false,
          autoselect_one = true,
          -- filter using buffer options
          bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { "neo-tree", "neo-tree-popup", "notify" },
            -- if the buffer type is one of following, the window will be ignored
            buftype = { "terminal", "quickfix" },
          },
        },
      })
    end,
  },
}
