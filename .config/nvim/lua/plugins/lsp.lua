return {
  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        cssls = {},
        html = {},
        emmet_language_server = {},
      },
    },
  },
}
