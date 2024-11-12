local util = require("conform.util")
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "blade-formatter",
        "emmet-language-server",
        "pint",
        "intelephense",
        "nginx-language-server",
        "phpstan",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "pint" },
        blade = { "blade-formatter" },
      },
      formatters = {
        pint = {
          meta = {
            url = "https://github.com/laravel/pint",
            description = "Laravel Pint is an opinionated PHP code style fixer for minimalists. Pint is built on top of PHP-CS-Fixer and makes it simple to ensure that your code style stays clean and consistent.",
          },
          command = util.find_executable({
            vim.fn.stdpath("data") .. "/mason/bin/pint",
            "vendor/bin/pint",
          }, "pint"),
          args = { "$FILENAME" },
          stdin = false,
        },
      },
    },
  },
}
