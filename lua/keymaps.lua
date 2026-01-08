-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- quick save buffer & quick quit
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = '[q]uit' })
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = '[w]rite/save current buffer' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>Q', vim.diagnostic.setloclist, { desc = '[Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et

-- oil config
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-------------------------------------------------
-- group: open
-------------------------------------------------
vim.keymap.set('n', '<leader>o', '', { desc = '[o]pen' })

vim.keymap.set('n', '<leader>oe', '<CMD>Neotree toggle<CR>', { desc = '[e]xplorer' })

-- terminal
vim.keymap.set('n', '<leader>ot', '', { desc = '[t]erminal split' })
vim.keymap.set('n', '<leader>oth', '<CMD>split | terminal<CR>20<C-w>-i', { desc = '[h]orizontal' })
vim.keymap.set('n', '<leader>otv', '<CMD>vsplit | terminal<CR>20<C-w><i', { desc = '[v]ertical' })

-- geepity
vim.keymap.set('n', '<leader>og', '<CMD>ChatGPT<CR>', { desc = 'geepity' })

-------------------------------------------------
-- group: navigation
-------------------------------------------------
-- paragraph navigation to 'ä' and 'å'
vim.api.nvim_set_keymap('n', 'å', '{', { noremap = true })
vim.api.nvim_set_keymap('n', 'ä', '}', { noremap = true })
-- '$' to '§'
vim.keymap.set({ 'n', 'v' }, '§', '$', { noremap = true })
vim.keymap.set('v', 'p', 'P', { noremap = true })

-- Indent with Tab in visual mode
vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })

-- Dedent with Shift-Tab in visual mode
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
