return {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
	cmd = "VenvSelect",
	opts = function(_, opts)
    -- Your options go here
    -- name = "venv",
    -- auto_refresh = false
    opts.dap_enabled = vim.fn.has("nvim-dap-python") ~= 0
    return vim.tbl_deep_extend("force", opts, {
      name = {
        "venv",
        ".venv",
        "env",
        ".env",
      },
    })
  end,
	event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
	keys = {{
    -- Keymap to open VenvSelector to pick a venv.
		"<leader>vs", "<cmd>:VenvSelect<cr>",
		-- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
		"<leader>vc", "<cmd>:VenvSelectCached<cr>"
	}}
}
