return {
  {
    'tpope/vim-fugitive',
    config = function()
      --vim-fugitive
      vim.keymap.set('n', '<leader>gs', ':Git<CR>', { noremap = true, desc = 'git status' }) --git status
      vim.keymap.set('n', '<leader>ga', ':Git add ', { noremap = true, desc = 'git add ' })
      vim.keymap.set('n', '<leader>gA', ':Git add .<CR>', { noremap = true, desc = 'git add .' })
      vim.keymap.set('n', '<leader>gp', ':Git push --quiet <CR>', { noremap = true, desc = 'git push' })
      vim.keymap.set('n', '<leader>gc', ':Git commit -qm "', { noremap = true, desc = 'git commit -am' })
      vim.keymap.set('n', '<leader>gL', ':Git log <CR>', { noremap = true, desc = 'git log' })
      vim.keymap.set('n', '<leader>gl', ':Git log --oneline<CR>', { noremap = true, desc = 'git log --oneline' })
    end,
  },
}
