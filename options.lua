-- set vim options here (vim.<first_key>.<second_key> = value)

-- Enable line numbers (absolute line numbers) for all modes
vim.wo.number = true

-- Disable relative line numbers in insert and replace modes
vim.cmd([[
  augroup DisableRelativeNumber
    autocmd!
    autocmd InsertEnter * set norelativenumber
    autocmd InsertLeave * set relativenumber
  augroup END
]])

-- Toggle relative line numbers in normal and visual modes
vim.api.nvim_set_keymap('n', '<leader>rn', ':set relativenumber!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>rn', ':set relativenumber!<CR>', { noremap = true, silent = true })

-- Define a key mapping to show hover information
vim.api.nvim_set_keymap('n', '<C-i>', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = false, -- sets vim.opt.wrap
    conceallevel = 2, -- enable conceal
    foldenable = false,
    foldexpr = "nvim_treesitter#foldexpr()", -- set Treesitter based folding
    foldmethod = "expr",
    foldlevel = 99,
    linebreak = true, -- linebreak soft wrap at words
    list = true, -- show whitespace characters
    -- listchars = { tab = " ", extends = "⟩", precedes = "⟨", trail = "·", eol = "" },
    showbreak = " ",
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
    camelcasemotion_key = "<leader>",
    copilot_no_tab_map = true,
    loaded_perl_provider = 0,
    sonokai_style ="andromeda",
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
