vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = true
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

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

-- Telescope
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
map("n", "<leader>fh", "<CMD>Telescope find_files hidden=true<CR>", { desc = "Fuzzy find hidden files in cwd" })
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Find string in cwd" })
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Fuzzy find opened files" })
map("n", "<leader>fs", "<CMD>Telescope git_status<CR>", { desc = "Show git status" })
map("n", "<leader>fc", "<CMD>Telescope git_commits<CR>", { desc = "Browse git commits" })
map("n", "<leader>ft", "<CMD>TodoTelescope<CR>", { desc = "Find todo markers" })

-- Move cwd to currently focused file
map("n", "<leader>cd", "<CMD>lcd %:p:h<CR>")

-- Hex editor
map("n", "<leader>x", "<CMD>HexToggle<CR>")

-- Lsp stuff
lsp = vim.lsp.buf
map("n", "<leader>k", lsp.hover)
map("n", "gd", lsp.definition)
map({ "n", "v" }, "<leader>ca", lsp.code_action)
map("n", "<leader>R", lsp.rename)

-- -- Markdown preview
-- map({ "n", "i", "v" }, "<C-m>", "<CMD>MarkdownPreview<CR>")
-- map({ "n", "i", "v" }, "<C-M>", "<CMD>MarkdownPreviewStop<CR>")
-- map({ "n", "i", "v" }, "<C-p>", "<CMD>MarkdownPreviewToggle<CR>")
