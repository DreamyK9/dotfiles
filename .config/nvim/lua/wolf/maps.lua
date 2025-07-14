vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = true
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- Save & Quit
map("n", "<leader>w", "<CMD>update<CR>")
map("n", "<leader>q", "<CMD>q<CR>")
map("n", "<leader>wq", "<CMD>wq<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
map("n", "<leader>n", "<CMD>Neotree toggle<CR>")
-- map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Remove Search Highlighting
map("n", "<C-_>", "<CMD>nohlsearch<CR>")

-- Alternative to escape key
map({ "n", "i", "v", "x", "o", "t" }, "<leader><tab>", "<ESC>")

-- Telescope
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
map("n", "<leader>fF", "<CMD>Telescope find_files hidden=true<CR>", { desc = "Fuzzy find hidden files in cwd" })
map("n", "<leader>FF", "<CMD>Telescope find_files hidden=true<CR>", { desc = "Fuzzy find hidden files in cwd" })
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Find string in cwd" })
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Fuzzy find opened files" })
map("n", "<leader>ft", "<CMD>TodoTelescope<CR>", { desc = "Find todo markers" })
map("n", "<leader>fe", "<CMD>Noice pick<CR>", { desc = "List message history. e='errors'" })
map("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", { desc = "Search help docs" })
map("n", "<leader>fk", "<CMD>Telescope keymaps<CR>", { desc = "Fuzzy find keymaps" })
map("n", "<leader>fc", "<CMD>Telescope commands<CR>", { desc = "Fuzzy find commands" })

-- git
map("n", "<leader>gg", "<CMD>LazyGit<CR>", { desc = "Open Lazygit" })
map("n", "<leader>gs", "<CMD>Telescope git_status<CR>", { desc = "Show git status" })
map("n", "<leader>gc", "<CMD>Telescope git_commits<CR>", { desc = "Browse git commits" })

-- Move cwd to currently focused file
map("n", "<leader>cd", "<CMD>lcd %:p:h<CR>")

-- Hex editor
map("n", "<leader>X", "<CMD>HexToggle<CR>")

-- Lsp stuff
lsp = vim.lsp.buf
map("n", "<leader>k", lsp.hover)
map("n", "gd", lsp.definition)
map({ "n", "v" }, "<leader>ca", lsp.code_action)
map("n", "<leader>r", lsp.rename)

-- Copilot Chat
map("n", "<leader>cc", "<CMD>CopilotChat<CR>", { desc = "Open Copilot Chat" })

-- -- Markdown preview
-- map({ "n", "i", "v" }, "<C-m>", "<CMD>MarkdownPreview<CR>")
-- map({ "n", "i", "v" }, "<C-M>", "<CMD>MarkdownPreviewStop<CR>")
-- map({ "n", "i", "v" }, "<C-p>", "<CMD>MarkdownPreviewToggle<CR>")

-- Execute current file
-- Source: https://www.reddit.com/r/neovim/comments/1ai19ux/execute_current_file_script_using_a_keymap_i_use/
--
-- If focused buffer is a script, make it executable, and execute it in a split window on the right
-- Had to include quotes around "%" because there are some apple dirs that contain spaces, like iCloud
vim.keymap.set("n", "<leader>x", function()
	local file = vim.fn.expand("%") -- Get the current file name
	local first_line = vim.fn.getline(1) -- Get the first line of the file
	if string.match(first_line, "^#!/") then -- If first line contains shebang
		local escaped_file = vim.fn.shellescape(file) -- Properly escape the file name for shell commands
		vim.cmd("!chmod +x " .. escaped_file) -- Make the file executable
		vim.cmd("vsplit") -- Split the window vertically
		vim.cmd("terminal " .. escaped_file) -- Open terminal and execute the file
		vim.cmd("startinsert") -- Enter insert mode, recommended by echasnovski on Reddit
	else
		vim.cmd("echo 'Not a script. Shebang line not found.'")
	end
end, { desc = "Execute current file in terminal (if it's a script)" })
