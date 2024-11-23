return {
  'eandrju/cellular-automaton.nvim',
  config = function()
    -- Keybinding for recreational CelluarAutomaton make it rain
    vim.keymap.set('n', '<leader>mr', '<cmd>CellularAutomaton make_it_rain<CR>', { desc = 'Make it rain!' })
  end,
}
