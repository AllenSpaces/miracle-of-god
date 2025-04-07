local M = {}

M.setup = function(USER_CONFIG)
	local config =
		vim.tbl_deep_extend("force", require("miracle-of-god.utils.config").DEFAULT_CONFIG, USER_CONFIG or {})

	vim.o.background = config.dark and "dark" or "light"
	vim.cmd.hi("clear")
	require("miracle-of-god.utils.utils").setHighLight()
	vim.g.colors_name = "miracle-of-god"
end

return M
