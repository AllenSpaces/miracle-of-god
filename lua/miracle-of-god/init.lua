local M = {}

M.setup = function(USER_CONFIG)
	local config =
		vim.tbl_deep_extend("force", require("miracle-of-god.utils.config").DEFAULT_CONFIG, USER_CONFIG or {})

	vim.o.background = config.dark and "dark" or "light"
	require("miracle-of-god.utils.utils").setHighLight()
end

M.load = function()
	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end

	vim.g.colors_name = "miracle-of-god"
end

if vim.g.colors_name == "miracle-of-god" then
	M.setup()
end

return M
