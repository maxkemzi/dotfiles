local util = require("conform.util")
return {
  { import = "lazyvim.plugins.extras.lsp.none-ls" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "blade", "php" })
      end

      ---@class ParserInfo[]
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.blade = {
        install_info = {
          url = "https://github.com/EmranMR/tree-sitter-blade",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "blade",
      }

      vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
        pattern = "*.blade.php",
        callback = function()
          vim.treesitter.start(nil, "blade")
          vim.opt.filetype = "blade"
        end,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
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
      setup = {
        emmet_language_server = function(_, opts)
          local els = require("lspconfig.configs.emmet_language_server")
          opts.filetypes = opts.filetypes or {}
          vim.list_extend(opts.filetypes, els.default_config.filetypes)
          vim.list_extend(opts.filetypes, { "php", "blade" })
        end,
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "intelephense",
        "pint",
        "blade-formatter",
        "phpstan",
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(
        opts.sources,
        nls.builtins.diagnostics.phpstan.with({
          extra_args = {
            "--memory-limit=2G",
          },
        })
      )
    end,
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
