return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "╭─────────────────────────────────────────────────────────╮",
        "│  ██▀███   ▄▄▄      ███▄ ▄███▓ ▄▄▄▄    ▒█████  ▓██   ██▓ │",
        "│ ▓██ ▒ ██▒▒████▄   ▓██▒▀█▀ ██▒▓█████▄ ▒██▒  ██▒ ▒██  ██▒ │",
        "│ ▓██ ░▄█ ▒▒██  ▀█▄ ▓██    ▓██░▒██▒ ▄██▒██░  ██▒  ▒██ ██░ │",
        "│ ▒██▀▀█▄  ░██▄▄▄▄██▒██    ▒██ ▒██░█▀  ▒██   ██░  ░ ▐██▓░ │",
        "│ ░██▓ ▒██▒▒▓█   ▓██▒██▒   ░██▒░▓█  ▀█▓░ ████▓▒░  ░ ██▒▓░ │",
        "│ ░ ▒▓ ░▒▓░░▒▒   ▓▒█░ ▒░   ░  ░░▒▓███▀▒░ ▒░▒░▒░    ██▒▒▒  │",
        "│   ░▒ ░ ▒░░ ░   ▒▒ ░  ░      ░▒░▒   ░   ░ ▒ ▒░  ▓██ ░▒░  │",
        "│    ░   ░   ░   ▒  ░      ░    ░    ░ ░ ░ ░ ▒   ▒ ▒ ░░   │",
        "│    ░           ░         ░    ░          ░ ░   ░ ░      │",
        "│                                                         │",
        "│                       name: Ramis                       │",
        "│ ✩░▒▓▆▅▃▂▁        e-mail: ramboy@mail.ru       ▁▂▃▅▆▓▒░✩ │",
        "╰─────────────────────────────────────────────────────────╯",
      }
      return opts
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm", "TermExec" },
    opts = {
      highlights = {
        Normal = { link = "Normal" },
        NormalNC = { link = "NormalNC" },
        NormalFloat = { link = "NormalFloat" },
        FloatBorder = { link = "NormalBorder" },
        StatusLine = { link = "StatusLine" },
        StatusLineNC = { link = "StatusLineNC" },
        WinBar = { link = "WinBar" },
        WinBarNC = { link = "WinBarNC" },
      },
      size = 10,
      on_create = function()
        vim.opt.foldcolumn = "0"
        vim.opt.signcolumn = "no"
      end,
      open_mapping = [[<F7>]],
      shading_factor = 2,
      direction = "float",
      float_opts = { border = "rounded" },
    },
  },
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
