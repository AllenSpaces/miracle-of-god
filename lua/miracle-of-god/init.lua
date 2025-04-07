local M = {}

M.setup = function(USER_CONFIG)
	local config =
		vim.tbl_deep_extend("force", require("miracle-of-god.utils.config").DEFAULT_CONFIG, USER_CONFIG or {})

	vim.o.background = config.dark and "dark" or "light"
	vim.g.colors_name = "miracle-of-god"
	if vim.g.colors_name then
		vim.cmd.hi("clear")
		require("miracle-of-god.utils.utils").setHighLight()
	end
end

return M
