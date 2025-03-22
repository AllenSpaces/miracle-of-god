local M = {}
local colors = require("miracle-of-god.utils.color").COLORS

local function HL(syntaxName, options)
	vim.api.nvim_set_hl(0, syntaxName, options)
end

function M.setHighLight()
	-- basic
	HL("Normal", { fg = colors.FG, bg = colors.BG })
	HL("Comment", { fg = colors.GRAY, italic = true })
	HL("Cursor", { fg = colors.ORANGE })
	HL("CursorLine", { bg = "" })
	HL("CursorColumn", { bg = "" })
	HL("LineNr", { fg = colors.GRAY })
	HL("CursorLineNr", { fg = colors.RED })
	HL("String", { fg = colors.RED })
	HL("Number", { fg = colors.BROWN })
	HL("Boolean", { fg = colors.GREEN })
	HL("Function", { fg = colors.BLUE })
	HL("Keyword", { fg = colors.PINK })
	HL("Operator", { fg = colors.ORANGE })
	HL("Type", { fg = colors.GREEN })
	HL("Identifier", { fg = colors.PURPLE })
	HL("PreProc", { fg = colors.PINK })
	HL("Special", { fg = colors.GREEN })
	HL("Underlined", { fg = colors.GREEN, underline = true })
	HL("Constant", { fg = colors.YELLOW })
	HL("Label", { fg = colors.GREEN })
	HL("SpecialKey", { fg = colors.PURPLE })
	HL("Title", { fg = colors.PURPLE })
	HL("Tag", { fg = colors.BROWN })
	HL("@variable", { fg = colors.PURPLE, italic = true })
	HL("Search", { fg = colors.BG, bg = colors.YELLOW })
	HL("IncSearch", { fg = colors.BG, bg = colors.YELLOW })
	HL("DiagnosticError", { fg = colors.RED })
	HL("DiagnosticWarn", { fg = colors.YELLOW })
	HL("DiagnosticInfo", { fg = colors.BLUE })
	HL("DiagnosticHint", { fg = colors.ORANGE })
	HL("Directory", { fg = colors.BLUE })
	HL("NotifyERRORBorder", { fg = colors.RED })
	HL("NotifyERRORTitle", { fg = colors.RED })
	HL("NotifyERRORBody", { fg = colors.RED })
	HL("NotifyERRORIcon", { fg = colors.RED })
	HL("NotifyWARNBorder", { fg = colors.YELLOW })
	HL("NotifyWARNTitle", { fg = colors.YELLOW })
	HL("NotifyWARNBody", { fg = colors.YELLOW })
	HL("NotifyWARNIcon", { fg = colors.YELLOW })
	HL("NotifyINFOBorder", { fg = colors.BLUE })
	HL("NotifyINFOTitle", { fg = colors.BLUE })
	HL("NotifyINFOBody", { fg = colors.BLUE })
	HL("NotifyINFOIcon", { fg = colors.BLUE })
	HL("@markup.heading.1.markdown", { fg = colors.RED, bold = true })
	HL("@markup.heading.2.markdown", { fg = colors.ORANGE, bold = true })
	HL("@markup.heading.3.markdown", { fg = colors.YELLOW, bold = true })
	HL("@markup.heading.4.markdown", { fg = colors.GREEN, bold = true })
	HL("@markup.heading.5.markdown", { fg = colors.PINK, bold = true })
	HL("@markup.heading.6.markdown", { fg = colors.PURPLE, bold = true })
	HL("DiffAdd", { fg = colors.GREEN })
	HL("DiffChange", { fg = colors.BROWN })
	HL("DiffDelete", { fg = colors.RED })
end

return M
