return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        bold = false,
        italic = false,
      },
      palette = {
        main = {
          pine = "#4da1c2",
        },
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      colors = {
        palette = {
          sumiInk0 = "#0f0f14",
          sumiInk1 = "#111116",
          sumiInk2 = "#121218",
          sumiInk3 = "#16161c",
          sumiInk4 = "#1d1d26",
          sumiInk5 = "#262631",
          sumiInk6 = "#3b3b4c",
        },
      },
      --  Remove bold
      statementStyle = { bold = false },
      overrides = function()
        return {
          Boolean = { bold = false },
          ["@lsp.mod.readonly"] = { link = "@lsp" },
          ["@lsp.typemod.function.readonly"] = { bold = false },
          ["@keyword.operator"] = { bold = false },
          ["@string.escape"] = { bold = false },
        }
      end,
    },
  },
}
