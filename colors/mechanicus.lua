local vim = vim
local M = {}

M.palette = {
	name = 'mechanicus',
	base0 = '#262622',
	base1 = '#302F27',
	base2 = '#2B2A22',
	base3 = '#3C3A2E',
	base4 = '#424033',
	base5 = '#54534d',
	base6 = '#9ca0a4',
	base7 = '#b1b1b1',
	base8 = '#e3e3e1',
	border = '#a1b5b1',
	brown = '#88481c',
	white = '#f0c674',
	grey = '#8F908A',
	black = '#000000',
	pink = '#f92672',
	green = '#85e084',
	darkGreen = '#529d51',
	aqua = '#7abcf5',
	yellow = '#e6f074',
	orange = '#d57635',
	purple = '#a870b1',
	red = '#fb6767',
	diff_add = '#75b774',
	diff_remove = '#fb6767',
	diff_change = '#27406b',
	diff_text = '#23324d',
}

M.load_colors = function(palette)
	return {

		-- Base --
		Normal = { fg = palette.white, bg = palette.base2 },
		NormalFloat = { bg = palette.base1 },
		Cursor = { style = 'reverse' },
		NonText = { fg = palette.base5 },
		Visual = { bg = palette.base4 },
		VisualNOS = { bg = palette.base3 },
		Search = { fg = palette.base2, bg = palette.yellow },
		IncSearch = { fg = palette.base2, bg = palette.orange },
		MatchParen = { fg = palette.pink },
		Question = { fg = palette.yellow },
		ModeMsg = { fg = palette.white, style = 'bold' },
		MoreMsg = { fg = palette.white, style = 'bold' },
		ErrorMsg = { fg = palette.red, style = 'bold' },
		WarningMsg = { fg = palette.yellow, style = 'bold' },
		VertSplit = { fg = palette.brown },
		CursorLineNr = { fg = palette.base7, bg = palette.base1 },
		LineNr = { fg = palette.base5, bg = palette.base0 },
		SignColumn = { fg = palette.yellow, bg = palette.base2 },
		SpellBad = { fg = palette.red, style = 'undercurl' },
		SpellCap = { fg = palette.purple, style = 'undercurl' },
		SpellRare = { fg = palette.aqua, style = 'undercurl' },
		SpellLocal = { fg = palette.pink, style = 'undercurl' },
		SpecialKey = { fg = palette.pink },
		Special = { fg = palette.yellow },
		Title = { fg = palette.yellow, style = 'bold' },
		Identifier = { fg = palette.aqua, style = 'bold' },


		-- Git colors --
		DiffAdd = { bg = palette.diff_add },
		DiffDelete = { bg = palette.diff_remove },
		DiffChange = { bg = palette.diff_change },
		DiffText = { bg = palette.diff_text },
		diffAdded = { fg = palette.green },
		diffRemoved = { fg = palette.red },

		Folded = { fg = palette.grey, bg = palette.base3 },
		FoldColumn = { fg = palette.white, bg = palette.black },

		-- Popups --
		Pmenu = { fg = palette.white, bg = palette.base3 },
		PmenuSel = { fg = palette.base4, bg = palette.white },
		PmenuSelBold = { fg = palette.base4, bg = palette.orange },
		PmenuThumb = { fg = palette.purple, bg = palette.green },
		PmenuSbar = { bg = palette.base3 },
		String = { fg = palette.green, style = 'italic' },

		dbui_tables = { fg = palette.white },

		-- Diagnostics --
		DiagnosticSignError = {fg = palette.red },
		DiagnosticSignWarn = { fg = palette.yellow },
		DiagnosticSignInfo = { fg = palette.white },
		DiagnosticSignHint = { fg = palette.aqua },
		DiagnosticVirtualTextError = { fg = palette.red },
		DiagnosticVirtualTextWarn = { fg = palette.yellow },
		DiagnosticVirtualTextInfo = { fg = palette.white },
		DiagnosticVirtualTextHint = { fg = palette.aqua },
		DiagnosticUnderlineError = { style = 'undercurl', sp = palette.red },
		DiagnosticUnderlineWarn = { style = 'undercurl', sp = palette.yellow },
		DiagnosticUnderlineInfo = { style = 'undercurl', sp = palette.white },
		DiagnosticUnderlineHint = { style = 'undercurl', sp = palette.aqua },

		-- hrsh7th/nvim-cmp
		CmpDocumentation = { fg = palette.white, bg = palette.base1 },
		CmpDocumentationBorder = { fg = palette.white, bg = palette.base1 },
		CmpItemAbbr = { fg = palette.white },
		CmpItemAbbrMatch = { fg = palette.aqua },
		CmpItemAbbrMatchFuzzy = { fg = palette.aqua },
		CmpItemKindDefault = { fg = palette.white },
		CmpItemMenu = { fg = palette.base6 },
		CmpItemKindKeyword = { fg = palette.pink },
		CmpItemKindVariable = { fg = palette.pink },
		CmpItemKindConstant = { fg = palette.pink },
		CmpItemKindReference = { fg = palette.pink },
		CmpItemKindValue = { fg = palette.pink },
		CmpItemKindFunction = { fg = palette.aqua },
		CmpItemKindMethod = { fg = palette.aqua },
		CmpItemKindConstructor = { fg = palette.aqua },
		CmpItemKindClass = { fg = palette.orange },
		CmpItemKindInterface = { fg = palette.orange },
		CmpItemKindStruct = { fg = palette.orange },
		CmpItemKindEvent = { fg = palette.orange },
		CmpItemKindEnum = { fg = palette.orange },
		CmpItemKindUnit = { fg = palette.orange },
		CmpItemKindModule = { fg = palette.yellow },
		CmpItemKindProperty = { fg = palette.green },
		CmpItemKindField = { fg = palette.green },
		CmpItemKindTypeParameter = { fg = palette.green },
		CmpItemKindEnumMember = { fg = palette.green },
		CmpItemKindOperator = { fg = palette.green },

		-- WhichKey
		WhichKey = {fg = palette.green, style = 'bold'},
		WhichKeyGroup = {fg = palette.orange, style = 'italic'},
		WhichKeySeparator = {fg = palette.yellow, style = 'bold'},
		WhichKeyDesc = {fg = palette.aqua, style = 'italic'},
	}
end

M.load_treesitter = function (palette)
	return {
		Variable = { name = '@variable', fg = palette.orange },
		VarBuiltIn = {name = '@variable.builtin', fg = palette.orange },
		Constant = { name = '@constant', fg = palette.purple, style = 'bold' },
		Boolean = { name = '@boolean', fg = palette.purple, style = 'bold' },
		String = { name = '@string', fg = palette.darkGreen, style = 'italic' },
		StringEscape = { name = '@string.escape', fg = palette.purple },
		Character = { name = '@character', fg = palette.darkGreen, style = 'italic' },
		Number = { name = '@number', fg = palette.purple },
		Float = { name = '@float', fg = palette.purple },
		Property = { name = '@property', fg = palette.orange },
		Const = { name = '@constant', fg = palette.aqua, style = 'bold' },
		ConstBuiltin = { name = '@constant.builtin', fg = palette.purple, style = 'bold' },
		Constructor = { name = '@constructor', fg = palette.yellow, style = 'bold' },
		Conditional = { name = '@conditional', fg = palette.aqua, style = 'italic' },
		Comment = { name = '@comment', fg = palette.base6, style = 'italic' },
		--
		Keyword = { name = '@keyword', fg = palette.aqua, style = 'italic' },
		KeywordFunction = { name = '@keyword.function', fg = palette.yellow, style = 'italic' },
		KeywordOperator = { name = '@keyword.operator', fg = palette.yellow, style = 'bold' },
		--
		Include = { name = '@include', fg = palette.aqua, style = 'italic' },
		Namespace = { name = '@namespace', fg = palette.aqua, style = 'italic' },
		Exception = { name = '@exception', fg = palette.aqua, style = 'italic' },
		StorageClass = { name = '@storageclass', fg = palette.yellow, style = 'italic' },
		--
		Function = { name = '@function', fg = palette.green, style = 'bold' },
		FuncBuiltin = { name = '@function.builtin', fg = palette.green },
		FuncMacro = { name = '@function.macro', fg = palette.green, style = 'italic' },
		Method = { name = '@method', fg = palette.green, style = 'bold' },
		Operator = { name = '@operator', fg = palette.yellow, style = 'bold' },
		ConditionalTernary = { name = '@conditional.ternary', fg = palette.yellow, style = 'italic' },
		Parameter = { name = '@parameter',  fg = palette.purple },
		ParameterRef = { name = '@reference',  fg = palette.purple },
		--
		PunctDelimiter = { name = '@punctuation.delimiter', fg = palette.yellow, style = 'bold' },
		PunctBracket = { name = '@punctuation.bracket', fg = palette.brown, style = 'bold' },
		PunctSpecial = { name = '@punctuation.special', fg = palette.brown },
		Repeat = { name = '@repeat', fg = palette.aqua, style = 'italic' },
		--
		Tag = { name = '@tag', fg = palette.yellow, style = 'bold' },
		TagDelimiter = { name = '@tag.delimiter', fg = palette.brown },
		TagAttribute = { name = '@tag.attribute', fg = palette.orange },
		Label = { name = '@label', fg = palette.pink },
		Type = { name = '@type', fg = palette.yellow, style = 'bold' },
		TypeQualifier = { name = '@type.qualifier', fg = palette.aqua, style = 'italic' },
		TypeDefinition = { name = '@type.definition', fg = palette.green, style = 'bold' },
		Field = { name = '@field', fg = palette.white, style = 'italic' },
	}
end

local default_config = {
	palette = M.classic,
	custom_hlgroups = {},
	italics = true,
}

M.setup = function(config)
	vim.cmd('hi clear')
	if vim.fn.exists('syntax_on') then
		vim.cmd('syntax reset')
	end
	vim.o.background = 'dark'
	vim.o.termguicolors = true
	config = config or {}
	config = vim.tbl_deep_extend('keep', config, default_config)
	vim.g.colors_name = M.palette.name

	local theme = M.load_colors(M.palette)
	theme = vim.tbl_deep_extend('keep', config.custom_hlgroups, theme)
	for group, color in pairs(theme) do
		local style = color.style and 'gui=' .. color.style or 'gui=NONE'
		local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
		local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
		local sp = color.sp and 'guisp = ' .. color.sp or 'guisp = NONE'
		vim.cmd(
			'highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp
		)
	end

	local TSTheme = M.load_treesitter(M.palette)
	TSTheme = vim.tbl_deep_extend('keep', config.custom_hlgroups, TSTheme)
	for group, color in pairs(TSTheme) do
		local name = color.name or ''
		local style = color.style and 'gui=' .. color.style or 'gui=NONE'
		local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
		local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
		vim.cmd(
			'highlight ' .. name .. ' ' .. style .. ' ' .. fg .. ' ' .. bg
		)
	end
end

M.setup()
