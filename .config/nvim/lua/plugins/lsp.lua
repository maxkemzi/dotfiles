return {
  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        cssls = {},
        html = {},
        intelephense = {
          filetypes = { "php", "blade", "php_only" },
          settings = {
            intelephense = {
              filetypes = { "php", "blade", "php_only" },
              files = {
                associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.diagnostics.phpstan.with({
            extra_args = {
              "--memory-limit=2G",
            },
          }),
        },
      }
    end,
  },
}
