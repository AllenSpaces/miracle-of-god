local M = {}
local colors = require("miracle-of-god.utils.color").COLORS

local function HL(syntaxName, options)
	vim.api.nvim_set_hl(0, syntaxName, options)
end

function M.setHighLight()
	-- basic
	HL("Normal", { fg = colors.DEFAULT })
	HL("Comment", { fg = colors.GRAY, italic = true })
	HL("Cursor", { fg = colors.ORANGE })
	HL("CursorLine", { bg = "" })
	HL("CursorColumn", { bg = "" })
	HL("LineNr", { fg = colors.GRAY })
	HL("CursorLineNr", { fg = colors.RED })
	HL("String", { fg = colors.RED })
	HL("Number", { fg = colors.BROWN })
	HL("Boolean", { fg = colors.CYAN, italic = true })
	HL("@function", { fg = colors.BLUE, italic = true, bold = true })
	HL("@function.builtin", { fg = colors.YELLOW, italic = true, bold = true })
	HL("@keyword", { fg = colors.PINK })
	HL("@keyword.function", { fg = colors.ORANGE })
	HL("@keyword.return", { fg = colors.PINK })
	HL("@parameter", { fg = colors.BROWN })
	HL("Operator", { fg = colors.ORANGE })
	HL("@field", { fg = colors.RED })
	HL("@method", { fg = colors.GREEN })
	HL("Identifier", { fg = colors.PURPLE })
	HL("PreProc", { fg = colors.PINK })
	HL("Special", { fg = colors.GREEN })
	HL("Underlined", { fg = colors.GREEN, underline = true })
	HL("Constant", { fg = colors.YELLOW })
	HL("Label", { fg = colors.GREEN })
	HL("SpecialKey", { fg = colors.BROWN })
	HL("Title", { fg = colors.PURPLE })
	HL("Tag", { fg = colors.BROWN })
	HL("@variable", { fg = colors.ORANGE, italic = true })
	HL("@variable.builtin", { fg = colors.GREEN, italic = true })
	HL("@type", { fg = colors.PINK, italic = true })
	HL("@type.builtin", { fg = colors.PURPLE, italic = true })
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
	HL("NotifyINFOBorder", { fg = colors.GREEN })
	HL("NotifyINFOTitle", { fg = colors.GREEN })
	HL("NotifyINFOBody", { fg = colors.GREEN })
	HL("NotifyINFOIcon", { fg = colors.GREEN })
	HL("@markup.heading", { fg = colors.RED, bold = true })
	HL("@markup.heading.1.markdown", { fg = colors.RED, bold = true })
	HL("@markup.heading.2.markdown", { fg = colors.ORANGE, bold = true })
	HL("@markup.heading.3.markdown", { fg = colors.YELLOW, bold = true })
	HL("@markup.heading.4.markdown", { fg = colors.GREEN, bold = true })
	HL("@markup.heading.5.markdown", { fg = colors.BLUE, bold = true })
	HL("@markup.heading.6.markdown", { fg = colors.PURPLE, bold = true })
	HL("@markup.row", { fg = colors.RED, bold = true })
	HL("@markup.strong", { fg = colors.RED, bold = true })
	HL("@markup.italic", { fg = colors.YELLOW, italic = true })
	HL("@markup.link", { fg = colors.RED })
	HL("@markup.list.unchecked", { fg = colors.RED })
	HL("@markup.list.checked", { fg = colors.ORANGE })
	HL("@markup.raw.delimiter.markdown", { fg = colors.BROWN })
	HL("markup.link.label.markdown", { fg = colors.RED })
	HL("@punctuation.special.markdown", { fg = colors.ORANGE })
	HL("DiffAdd", { fg = colors.CYAN })
	HL("DiffChange", { fg = colors.BROWN })
	HL("DiffDelete", { fg = colors.RED })
	HL("NvimTreeImageFile", { fg = colors.ORANGE })
	HL("NvimTreeExecFile", { fg = colors.RED })
	HL("HopNextKey", { fg = colors.RED })
	HL("HopNextKey1", { fg = colors.BLUE })
	HL("HopNextKey2", { fg = colors.PURPLE })
	HL("CmpItemKindText", { fg = colors.CYAN })
	HL("CmpItemKindSnippet", { fg = colors.PINK })
	HL("CmpItemKindMethod", { fg = colors.BLUE })
	HL("CmpItemKindFunction", { fg = colors.BLUE })
	HL("CmpItemKindConstructor", { fg = colors.RED })
	HL("CmpItemKindField", { fg = colors.RED })
	HL("CmpItemKindVariable", { fg = colors.ORANGE })
	HL("CmpItemKindClass", { fg = colors.PINK })
	HL("CmpItemKindInterface", { fg = colors.YELLOW })
	HL("CmpItemKindModule", { fg = colors.GREEN })
	HL("CmpItemKindProperty", { fg = colors.ORANGE })
	HL("CmpItemKindUnit", { fg = colors.RED })
	HL("CmpItemKindValue", { fg = colors.BLUE })
	HL("CmpItemKindEnum", { fg = colors.BROWN })
	HL("CmpItemKindKeyword", { fg = colors.PINK })
	HL("CmpItemKindFile", { fg = colors.BLUE })
	HL("CmpItemKindReference", { fg = colors.RED })
	HL("CmpItemKindColor", { fg = colors.GREEN })
	HL("CmpItemKindFolder", { fg = colors.PURPLE })
	HL("CmpItemKindEnumMember", { fg = colors.ORANGE })
	HL("CmpItemKindConstant", { fg = colors.RED })
	HL("CmpItemKindStruct", { fg = colors.PURPLE })
	HL("CmpItemKindEvent", { fg = colors.BLUE })
	HL("CmpItemKindOperator", { fg = colors.YELLOW })
	HL("CmpItemKindTypeParameter", { fg = colors.GREEN })
end

return M
