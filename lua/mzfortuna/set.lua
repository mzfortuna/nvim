-- a/Users/mzfortuna/Movies/yt/InspiringPhilosophy/The Philosophy of Tolkien [TeF6lomaU3I].webmetrw

vim.cmd("let $FZF_DEFAULT_COMMAND=\'find . \\( -name node_modules -o -name .git -o -name env \\) -prune -o -type f -print\'")

vim.g.netrw_banner=0
vim.g.netrw_liststyle=3

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("XDG_DATA_HOME") .. "/vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.cursorline = true
-- vim.opt.colorcolumn = "80"

