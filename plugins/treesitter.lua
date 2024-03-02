return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      -- "lua"
    })
    opts.auto_install = true
  end,
  dependencies = {
    {
      "mrjones2014/nvim-ts-rainbow",
      config = function()
        Params = {
          rainbow = {
            colors = {
              "#FABD2F",  -- Yellow
              "#689D6A",   -- Teal (A variation of the original Gruvbox palette)
              "#D3869B",  -- Purple
              "#B8BB26",  -- Green
              "#FB4934",  -- Red
              "#83A598",  -- Blue (Same as Blue, can be adjusted)
              "#D65D0E",  -- Orange
              "#B8BB26",  -- Green (Same as Green, can be adjusted)
              "#7C6F64",  -- Gray (You can add variations with lighter or darker shades)
              "#83A598",  -- Blue
            },
            enable = true,
          }}
        require("nvim-treesitter.configs").setup(Params) end,
    },
    {
      "nvim-treesitter/playground",
      cmd = "TSPlaygroundToggle",
    },
  },
}
