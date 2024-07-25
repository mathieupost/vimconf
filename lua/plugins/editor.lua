return {
  { -- Heuristically set buffer options (shiftwidth, expandtab, etc)
    "tpope/vim-sleuth",
  },

  {
    "windwp/nvim-ts-autotag",
    opts = {
      filetypes = { "html", "xml", "typescriptreact", "heex" },
    },
  },

  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      disable_mouse = false,
    },
    event = "VeryLazy",
  },

  {
    "echasnovski/mini.hipatterns",
    event = "LazyFile",
    opts = function()
      local hi = require("mini.hipatterns")
      return {
        highlighters = {
          go_format = {
            pattern = function(buf_id)
              if vim.bo[buf_id].filetype ~= "go" then
                return nil
              end
              return "%%[%p]*%a"
            end,
            group = "MiniHipatternsFixme",
          },
          hex_color = hi.gen_highlighter.hex_color({ priority = 2000 }),
        },
      }
    end,
    config = function(_, opts)
      require("mini.hipatterns").setup(opts)
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>'", "<cmd>Telescope resume<cr>", desc = "Resume" },
    },
  },
}
