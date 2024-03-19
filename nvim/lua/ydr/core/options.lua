local opt = vim.opt

-- numbers
opt.number = true
opt.relativenumber = true

-- show matching
opt.showmatch = true

-- highlight
opt.hlsearch = true

-- incremental search
opt.incsearch = true

-- search
-- opt.ignorecase = true
-- opt.smartcase = true

-- cursor
opt.cursorline = true

-- get bash-like tab completions
opt.wildmode = "longest,list"

-- using system clipboard
opt.clipboard:append("unnamedplus")

-- speed up scrolling in Vim
opt.ttyfast = true

-- enable mouse click
opt.mouse = a

-- required for vim-signify
opt.updatetime = 100

-- indent a new line the same amount as the line just typed
opt.autoindent = true

-- width for autoindents
opt.shiftwidth = 4

-- number of columns occupied by a tab
opt.tabstop = 4

-- see multiple spaces as tabstops so <BS> does the right thing
opt.softtabstop = 4

-- theme
opt.termguicolors = true

-- consider the - as part of a whole word
opt.iskeyword:append("-", "/")

-- don't touch unnamed register when pasting over visual selection
vim.api.nvim_set_keymap('v', 'p', 'pgvy', { noremap = true })

-- syntax highlighting
vim.cmd([[ syntax enable ]])
-- pending
-- filetype plugin indent on	    " allow auto-indenting depending on file type
-- autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab " manually set indentation for yaml files
-- filetype plugin on
