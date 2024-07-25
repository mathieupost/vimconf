return {
  { -- Open on RETURN
    "mini.files",
    opts = {
      mappings = {
        go_in_plus = "<CR>",
      },
      windows = {
        width_preview = 80,
      },
    },
  },

  { -- LSP keymaps
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "gd", vim.lsp.buf.definition, desc = "Goto Definition" }
      keys[#keys + 1] = { "gr", vim.lsp.buf.references, desc = "References" }
      keys[#keys + 1] = { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" }
      keys[#keys + 1] = { "gI", vim.lsp.buf.implementation, desc = "Goto Implementation" }
      keys[#keys + 1] = { "gt", vim.lsp.buf.type_definition, desc = "Goto Type Definition" }
    end,
  },

  { -- Scroll docs on C-u and C-d
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
      })
    end,
  },

  { -- Close on ESC
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<ESC>"] = function(...)
              return require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
  },
}
