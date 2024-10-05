return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
    },
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      --  Remove bold
      statementStyle = { bold = false },
      overrides = function(colors)
        return {
          Boolean = { bold = false },
          ["@lsp.mod.readonly.typescript"] = { link = "@lsp" },
          ["@lsp.typemod.function.readonly"] = { bold = false },
          ["@keyword.operator"] = { bold = false },
          ["@string.escape"] = { bold = false },
        }
      end,
    },
  },
}
