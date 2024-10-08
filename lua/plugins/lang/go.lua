return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = function(_, opts)
      opts.servers.gopls.settings.gopls.directoryFilters = vim.list_extend(
        opts.servers.gopls.settings.gopls.directoryFilters or {},
        { "-**/node_modules", "-**/mocks", "-**/mock" }
      )
    end,
  },

  {
    "mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "golangci-lint",
      })
    end,
  },

  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        go = { "golangcilint" },
      },
    },
  },

  -- {
  --   "nvimtools/none-ls.nvim",
  --   optional = true,
  --   opts = function(_, opts)
  --     local nls = require("null-ls")
  --     opts.sources = vim.list_extend(opts.sources or {}, {
  --       nls.builtins.diagnostics.golangci_lint,
  --     })
  --   end,
  -- },
}
