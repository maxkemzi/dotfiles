local kanagawa_palette = {
  sumiInk0 = "#0f0f14",
  sumiInk1 = "#111116",
  sumiInk2 = "#121218",
  sumiInk3 = "#16161c",
  sumiInk4 = "#1d1d26",
  sumiInk5 = "#262631",
  dragonBlack0 = "#090808",
  dragonBlack1 = "#0d0d0a",
  dragonBlack2 = "#141411",
  dragonBlack3 = "#110f0f",
  dragonBlack4 = "#1c1b1b",
  dragonBlack5 = "#282726",
}

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
  {
    "thesimonho/kanagawa-paper.nvim",
    opts = {
      colors = {
        palette = kanagawa_palette,
      },
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
        palette = kanagawa_palette,
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
