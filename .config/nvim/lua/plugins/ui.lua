return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      table.insert(opts.routes, {
        filter = {
          event = "lsp",
          kind = "progress",
          find = "jdtls",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  {
    "folke/snacks.nvim",
    --- @type snacks.Config
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                width = 0.2,
              },
            },
          },
        },
      },
    },
  },
}
