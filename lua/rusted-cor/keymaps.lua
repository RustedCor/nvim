-- Remapea Ctrl+C para copiar al clipboard del sistema
vim.keymap.set('v', '<C-c>', '"+y', { noremap = true, silent = true })
-- Remapea Ctrl+X para cortar al clipboard del sistema
vim.keymap.set('v', '<C-x>', '"+d', { noremap = true, silent = true })
-- Remapea Ctrl+S para guardar
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
-- Remapea Ctrl+V para pegar desde el clipboard del sistema
vim.keymap.set({ 'n', 'v' }, '<C-v>', '"+p', { noremap = true, silent = true })
vim.keymap.set('i', '<C-v>', '<Esc>"+pa', { noremap = true, silent = true })
--BufDel
vim.keymap.set('n', '<C-d>', ':BufDel<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-a>', ':BufDelAll<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-o>', ':BufDelOthers<cr>', { noremap = false, silent = true })
