return {
  {
    "akinsho/toggleterm.nvim",
    config = true,
    cmd = "ToggleTerm",
    keys = {
      { "<C-`>", "<cmd>ToggleTerm<cr>", mode = { "i", "n", "t" }, desc = "Status" },
    },
    opts = {
      shell = "fish",
    },
  },

  {
    "chomosuke/term-edit.nvim",
    ft = "toggleterm",
    config = true,
    opts = {
      prompt_end = "❯ ",
    },
  },
}
