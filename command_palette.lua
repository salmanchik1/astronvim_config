return {
  { "Servers",
    { "Restart lua-ls",   ":LspRestart lua-ls" },
    { "Restart eslint_d", ":!eslint_d restart" },
    { "Restart tsserver", ":LspRestart tsserver" },
  },
  { "File",
    { "inspect types", ":InspectTwoslashQueries", },
  },
  { "Packages",
    { "Update Plugins and Mason", ":AstroUpdatePackages" },
    { "Mason Update",             ":MasonUpdateAll" },
    { "Open Mason",               ":Mason" },
    { "Plugins Status",           ":lua require('lazy').home()" },
    { "Plugins Update",           ":lua require('lazy').update()" },
    { "Plugins Sync",             ":lua require('lazy').sync()" },
  },
  { "Vim",
    { "commands",             ":lua require('telescope.builtin').commands()" },
    { "command history",      ":lua require('telescope.builtin').command_history()" },
    { "vim options",          ":lua require('telescope.builtin').vim_options()" },
    { "check health",         ":checkhealth" },
    { "reload vimrc",         ":source $MYVIMRC" },
    { "Change colorshceme",   ":lua require('telescope.builtin').colorscheme({ enable_preview = true })" },
  },
  { "AstroNvim",
    { "AstroNvim Version",   ":AstroVersion" },
    { "AstroNvim Changelog", ":AstroChangelog" },
    { "AstroNvim Update",    ":AstroUpdate" },
  }
}
