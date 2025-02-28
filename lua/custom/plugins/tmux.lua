return {
  -- Enable vim-tmux-navigator seemless integration of vim navigation on tmux
  'christoomey/vim-tmux-navigator',
  config = function()
    -- Integrate tmux navigation
    --  See `:help wincmd` for a list of all window commands
    vim.keymap.set('n', 'C-h', '<cmd>TmuxNavigateLeft<CR>', { desc = 'Tmux move focus to the left window' })
    vim.keymap.set('n', 'C-l', '<cmd>TmuxNavigateRight<CR>', { desc = 'Tmux move focus to the right window' })
    vim.keymap.set('n', 'C-j', '<cmd>TmuxNavigateDown<CR>', { desc = 'Tmux move focus to the lower window' })
    vim.keymap.set('n', 'C-k', '<cmd>TmuxNavigateUp<CR>', { desc = 'Tmux move focus to the upper window' })
  end,
}
