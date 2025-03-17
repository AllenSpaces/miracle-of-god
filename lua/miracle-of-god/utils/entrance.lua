local M = {}

function M.entrancePage(config)
	local assic = config.entrance.settings.assic

	local width = vim.opt.columns
	local height = vim.opt.lines

	local start_col = math.floor((width - #assic) / 2)
	local start_row = math.floor(height / 2)

	vim.api.nvim_command("clear")

	vim.api.nvim_buf_set_lines(0, start_row, start_row, false, { assic })
	vim.api.nvim_buf_add_highlight(0, -1, "Title", start_row, start_col, start_col + #assic)
end

return M
