local global = vim.g
local o = vim.opt

o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.splitright = true
o.splitbelow = true
o.termguicolors = true

local running_in_unix_shell = vim.env.SHELL
if vim.fn.has("win32") == 1 and running_in_unix_shell then
	o.shell = "bash"
	o.shellcmdflag = "-c"
	o.shellredir = ">%s 2>&1"
	o.shellquote = ""
	o.shellxescape = ""
	-- o.shelltemp = false -- Uncomment if you want to set noshelltemp
	o.shellxquote = ""
	o.shellpipe = "2>&1| tee"
	vim.env.TMP = "/tmp"
end

vim.cmd("language en_US.UTF8")
