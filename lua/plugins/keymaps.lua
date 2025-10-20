vim.keymap.set("x", ">", ">gv", { desc = "Visual indent right and reselect" })
vim.keymap.set("x", "<", "<gv", { desc = "Visual indent left and reselect" })


-- 粘贴：插入模式下 Ctrl+Shift+V
vim.keymap.set("i", "<C-S-v>", "<C-r>+", { desc = "Paste clipboard in insert mode" })

-- 粘贴：普通模式下 Ctrl+Shift+V
vim.keymap.set("n", "<C-S-v>", '"+p', { desc = "Paste clipboard in normal mode" })

-- 粘贴：视觉模式下 Ctrl+Shift+V（替换选中的文字）
vim.keymap.set("v", "<C-S-v>", '"+p', { desc = "Paste clipboard in visual mode" })

-- command mode
vim.keymap.set("c", "<C-S-v>", "<C-r>+", { desc = "Paste clipboard in command mode" })


vim.keymap.set("t", "<C-S-v>", [[<C-\><C-n>"+pi]], { desc = "粘贴剪贴板", noremap = true, silent = true })

-- 绑定 Ctrl+Shift+V 为粘贴功能
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<C-S-V>", '"+p', opts) -- 普通模式粘贴
vim.api.nvim_set_keymap("v", "<C-S-V>", '"+p', opts) -- 可视模式粘贴

-- Ctrl+W 翻译
vim.keymap.set("n", "<C-w>", "<cmd>Translate<cr>", { desc = "翻译" })
