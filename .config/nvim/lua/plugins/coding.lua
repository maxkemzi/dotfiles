return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
      },
      completion = {
        accept = {
          auto_brackets = {
            enabled = false,
          },
        },
        trigger = {
          -- show_in_snippet = false,
          -- show_on_accept_on_trigger_character = false,
        },
      },
      sources = {
        providers = {
          lsp = {
            name = "LSP",
            module = "blink.cmp.sources.lsp",
            score_offset = 100,
          },
        },
      },
    },
  },
}
