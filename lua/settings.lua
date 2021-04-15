--- Settings

local o = vim.o 	-- global options
local wo = vim.wo	-- window-scoped options
local bo = vim.bo	-- buffer-scoped options
local g = vim.g 	-- a table to access global variables (let g:***)
local cmd = vim.cmd	-- vim.cmd({cmd}) invoc Ex command. vim.cmd('echo 42')

bo.shiftwidth = 4
bo.tabstop = 4
bo.expandtab = true
bo.smartindent = true
bo.undofile = true

o.undodir = vim.fn.expand'~'..'/.local/share/nvim/undo'
-- o.completeopt = 'noinsert,menuone,noselect,preview'
o.completeopt="menuone,noselect"
o.hidden = true
o.ignorecase = true
o.joinspaces = false
o.scrolloff = 8
o.sidescrolloff = 8
o.shiftround = true
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.wildmode = 'list:longest'
o.wildmenu = true
o.updatetime = 50
o.inccommand = 'nosplit'
o.errorbells = false
o.swapfile = false
o.backup = false
o.incsearch = true
o.cmdheight = 1
o.showbreak = "↪"
o.listchars = "tab:┊ ,eol:↲,nbsp:␣,trail:•,precedes:←,extends:→"
o.guifont = "Fira"
o.termguicolors = true
o.colorcolumn = "80"
o.laststatus = 2
o.pumheight = 10    -- Makes popup menu smaller
o.pumblend = 10     -- And a bit transparent
o.mouse = "nv"
o.cmdwinheight = 5  -- command window height

wo.cursorline = true
wo.list = true
wo.number = true
wo.relativenumber = true
wo.wrap = false
wo.signcolumn = "yes"

g.php_cs_fixer_path = "~/prog/git/PHP_CodeSniffer/bin/phpcs"
g.php_cs_fixer_rules = "@PSR2"

g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_autoclose = 1

--- https://github.com/morhetz/gruvbox/wiki/Configuration
g.gruvbox_transparent_bg = 1

cmd('set shortmess+=c')
cmd('colorscheme gruvbox')
cmd('syntax on')
cmd('highlight Normal guibg=NONE')

--- add indent line when needed
g.indent_blankline_char = "┊"
g.indent_blankline_filetype_exclude = { 'help', 'packer' }
g.indent_blankline_buftype_exclude = { 'terminal', 'nofile'}
g.indent_blankline_char_highlight = 'LineNr'

