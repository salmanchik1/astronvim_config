return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    enable_diagnostics = false,
    filesystem = {
      filtered_items = {
	      visible = false,
	      show_hidden_count = true,
	      hide_dotfiles = true,
        hide_gitignored = false,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
	      never_show = {},
      },
    },
  },
}
