-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- "n" stands for normal mode
-- <leader>pv is space_bar + p + v
-- run the Ex command , where Ex stands for explorer command.
-- While in normal mode if we press <leader> pv execute the command Explorer.
-- Keybinding to bring the file explorer up
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Keybinding for recreational CelluarAutomaton make it rain
vim.keymap.set('n', '<leader>mr', '<cmd>CellularAutomaton make_it_rain<CR>')

-- Function to surround words with: (), [], {}, <>, '', "", ``, //
function surround(w_or_W)
  local open_char = vim.fn.input 'Surround with: '
  local closed_char = nil
  if open_char == '(' then
    closed_char = ')'
  end
  if open_char == '[' then
    closed_char = ']'
  end
  if open_char == '{' then
    closed_char = '}'
  end
  if open_char == '<' then
    closed_char = '>'
  end
  if open_char == "'" then
    closed_char = '"'
  end
  if open_char == '"' then
    closed_char = '"'
  end
  if open_char == '`' then
    closed_char = '`'
  end
  if open_char == '/' then
    closed_char = '/'
  end

  if w_or_W == 'w' then
    vim.cmd('normal! ciw' .. open_char)
  elseif w_or_W == 'W' then
    vim.cmd([[normal! ciW]] .. open_char)
  end
  vim.cmd 'normal! p'
  vim.cmd('normal! a' .. closed_char)
  vim.cmd 'normal! a'
end

vim.keymap.set('n', '<leader>ps', ":lua surround('w')<CR>", { desc = 'Surround word' })
vim.keymap.set('n', '<leader>pS', ":lua surround('W')<CR>", { desc = 'Surround WORD' })

-- Integrate tmux navigation
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<leader>h', '<cmd>TmuxNavigateLeft<CR>', { desc = 'Tmux move focus to the left window' })
vim.keymap.set('n', '<leader>l', '<cmd>TmuxNavigateRight<CR>', { desc = 'Tmux move focus to the right window' })
vim.keymap.set('n', '<leader>j', '<cmd>TmuxNavigateDown<CR>', { desc = 'Tmux move focus to the lower window' })
vim.keymap.set('n', '<leader>k', '<cmd>TmuxNavigateUp<CR>', { desc = 'Tmux move focus to the upper window' })
