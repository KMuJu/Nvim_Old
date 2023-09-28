local M = {}

function M.runFile()
	if vim.bo.filetype == "python" then
		vim.cmd(":w")
		vim.cmd(":ter clear;python %")
	end

end

return M
