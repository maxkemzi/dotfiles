return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          always_show_by_pattern = { ".env*" },
          never_show = { ".git" },
        },
      },
      window = {
        width = 30,
        auto_expand_width = true,
      },
    },
  },
}
