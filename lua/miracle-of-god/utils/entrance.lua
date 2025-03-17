local M = {}

function M.entrancePage(config)
	local assic = config.entrance.settings.assic

	local width = vim.opt.columns
	local height = vim.opt.lines

	local max_line_length = 0
	for _, line in ipairs(assic) do
		if #line > max_line_length then
			max_line_length = #line
		end
	end
	local start_col = math.floor((width - max_line_length) / 2)

	local start_row = math.floor((height - #assic) / 2)

	vim.api.nvim_command("clear")

	for i, line in ipairs(assic) do
		vim.api.nvim_buf_set_lines(0, start_row + i - 1, start_row + i - 1, false, { line })
		vim.api.nvim_buf_add_highlight(0, -1, "Title", start_row + i - 1, start_col, start_col + #line)
	end
end

return M
