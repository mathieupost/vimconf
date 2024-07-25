return {
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({
        symbol_in_winbar = {
          enable = true,
        },
        implement = {
          enable = true,
          virtual_text = true,
        },
        lightbulb = {
          enable = false,
        },
        finder = {
          layout = "normal",
          keys = {
            toggle_or_open = "<cr>",
            shuttle = "<tab>",
            vsplit = "v",
          },
        },
      })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
      -- remove from lualine in favor of symbol_in_winbar
      { "SmiteshP/nvim-navic", enabled = false },
    },
    event = "LspAttach",
    keys = {
      { "<leader>k", "<cmd>Lspsaga finder<cr>", desc = "Lspsaga" },
      { "<leader>lr", "<cmd>LspRestart<cr><cmd>bufdo e<cr>", desc = "[L]sp [R]estart and reload buffers" },
    },
  },

  -- {
  --   "huggingface/llm.nvim",
  --   -- opts = {
  --   --   tokens_to_clear = { "<EOT>" },
  --   --   fim = {
  --   --     enabled = true,
  --   --     prefix = "<PRE> ",
  --   --     middle = " <MID>",
  --   --     suffix = " <SUF>",
  --   --   },
  --   --   model = "http://localhost:11434/api/generate",
  --   --   context_window = 4096,
  --   --   tokenizer = nil,
  --   --   adaptor = "ollama",
  --   --   request_body = { model = "codellama:7b-code" },
  --   -- },
  --   opts = {
  --     backend = "ollama",
  --     model = "codellama:7b-code",
  --     url = "http://localhost:11434/api/generate",
  --     tokens_to_clear = { "<EOT>" },
  --     fim = {
  --       enabled = true,
  --       prefix = "<PRE> ",
  --       middle = " <MID>",
  --       suffix = " <SUF>",
  --     },
  --     context_window = 4096,
  --     -- cf https://github.com/ollama/ollama/blob/main/docs/api.md#parameters
  --     request_body = {
  --       -- Modelfile options for the model you use
  --       options = {
  --         temperature = 0.2,
  --         top_p = 0.95,
  --       },
  --     },
  --   },
  -- },
}
