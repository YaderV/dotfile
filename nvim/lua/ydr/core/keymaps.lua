-- leader key 
vim.g.mapleader = " " 

-- toggle nvim tree
vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")

-- move lines selected in visual mode
vim.keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv")

-- move between panes
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- move panes
vim.keymap.set("n", "<leader>h", "<C-W>H")
vim.keymap.set("n", "<leader>j", "<C-W>J")
vim.keymap.set("n", "<leader>k", "<C-W>K")
vim.keymap.set("n", "<leader>l", "<C-W>L")

-- buffers
vim.keymap.set("n", "<leader>b", ":JABSOpen<CR>")
