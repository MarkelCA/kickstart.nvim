-- Down
vim.keymap.set({ 'n', 'v' }, 'h', 'j')
vim.keymap.set({ 'n', 'v' }, 'u', 'j')
vim.keymap.set({ 'n', 'v' }, 'H', '10j')
-- Left
vim.keymap.set({ 'n', 'v' }, 'n', 'h')
-- vim.keymap.set({"n", "v"}, "o", "h")
vim.keymap.set({ 'n', 'v' }, 'k', 'b')
-- Right
vim.keymap.set({ 'n', 'v' }, 's', 'l')
vim.keymap.set({ 'n', 'v' }, 'a', 'l')
vim.keymap.set({ 'n', 'v' }, 'q', 'w')
-- Up
vim.keymap.set({ 'n', 'v' }, 't', 'k')
vim.keymap.set({ 'n', 'v' }, 'e', 'k')
vim.keymap.set({ 'n', 'v' }, 'T', '10k')
-- Undo
vim.keymap.set({ 'n', 'v' }, ',', 'u')
-- Next Ocurrence
vim.keymap.set({ 'n', 'v' }, ';', 'n')
-- Previous Ocurrence
vim.keymap.set({ 'n', 'v' }, '<C-;>', 'N')
-- Remove highlighted text
vim.keymap.set({ 'n', 'v' }, '<leader>h', vim.cmd.noh)

vim.keymap.set('n', '<leader>w', vim.cmd.w)
vim.keymap.set('n', '<leader>q', vim.cmd.q)

-- Center view
vim.keymap.set('n', '<leader>m', 'zz')
-- New tab
vim.keymap.set('n', '<leader>rc', vim.cmd.tabnew)
