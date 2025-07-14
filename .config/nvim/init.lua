-- hardcoded quickfix for pyenv on Windows
if vim.fn.has("win32") == 1 then
	vim.g.python3_host_prog = vim.env.USERPROFILE .. "/.pyenv/pyenv-win/versions/3.13.3/python.exe"
end

require("wolf")
