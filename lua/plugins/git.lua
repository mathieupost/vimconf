return {
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
    keys = {
      { "<leader>gG", "<cmd>tab Git<cr>", desc = "fugitive" },
      { "<leader>gl", "<cmd>tab Git log<cr>", desc = "log" },
      { "<leader>gp", "<cmd>Git push<cr>", desc = "push" },
      { "<leader>gP", "<cmd>Git push --force<cr>", desc = "push (force)" },
      { "<leader>gf", "<cmd>Git fetch --all --prune<cr>", desc = "fetch" },
      { "<leader>gF", "<cmd>Git pull<cr>", desc = "pull" },
      { "q", ":q<cr>", ft = { "git", "fugitive", "fugitiveblame" } },
    },
  },

  {
    "sindrets/diffview.nvim",
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview" },
    },
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    opts = function()
      local actions = require("diffview.actions")

      return {
        view = {
          merge_tool = {
            layout = "diff4_mixed",
          },
        },
        keymaps = {
          view = {
            { "n", "q", actions.close, { desc = "Close" } },
          },
          file_panel = {
            { "n", "q", actions.close, { desc = "Close" } },
          },
        },
      }
    end,
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
    },
    config = true,
    event = "VeryLazy",
    cmd = { "Neogit" },
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
    },
  },
}
