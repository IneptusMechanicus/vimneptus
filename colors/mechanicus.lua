local vim = vim
local M = {}

M.classic = {
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

M.load_syntax = function(palette)
	return {
		Normal = {
			fg = palette.white,
			bg = palette.base2,
		},
		NormalFloat = {
			bg = palette.base1,
		},
		Cursor = {
			style = 'reverse',
		},
		ColorColumn = {
			bg = palette.base3,
		},
		CursorLine = {
			bg = palette.base3,
		},
		NonText = { -- used for "eol", "extends" and "precedes" in listchars
			fg = palette.base5,
		},
		Visual = {
			bg = palette.base4,
		},
		VisualNOS = {
			bg = palette.base3,
		},
		Search = {
			fg = palette.base2,
			bg = palette.yellow,
		},
		IncSearch = {
			fg = palette.base2,
		bg = palette.orange,
		},
		CursorLineNr = {
			fg = palette.orange,
			bg = palette.base2,
		},
		MatchParen = {
			fg = palette.pink,
		},
		Question = {
			fg = palette.yellow,
		},
		ModeMsg = {
			fg = palette.white,
			style = 'bold',
		},
		MoreMsg = {
			fg = palette.white,
			style = 'bold',
		},
		ErrorMsg = {
			fg = palette.red,
			style = 'bold',
		},
		WarningMsg = {
			fg = palette.yellow,
			style = 'bold',
		},
		VertSplit = {
			fg = palette.brown,
		},
		LineNr = {
			fg = palette.base5,
			bg = palette.base2,
		},
		SignColumn = {
			fg = palette.white,
			bg = palette.base2,
		},
		StatusLine = {
			fg = palette.base7,
			bg = palette.base3,
		},
		StatusLineNC = {
			fg = palette.grey,
			bg = palette.base3,
		},
		TabLineSel = {
			bg = palette.base2,
		},
		SpellBad = {
			fg = palette.red,
			style = 'undercurl',
		},
		SpellCap = {
			fg = palette.purple,
			style = 'undercurl',
		},
		SpellRare = {
			fg = palette.aqua,
			style = 'undercurl',
		},
		SpellLocal = {
			fg = palette.pink,
			style = 'undercurl',
		},
		SpecialKey = {
			fg = palette.pink,
		},
		Title = {
			fg = palette.yellow,
			style = 'bold',
		},
		Directory = {
			fg = palette.aqua,
		},
		DiffAdd = {
			bg = palette.diff_add,
		},
		DiffDelete = {
			bg = palette.diff_remove,
		},
		DiffChange = {
			bg = palette.diff_change,
		},
		DiffText = {
			bg = palette.diff_text,
		},
		diffAdded = {
			fg = palette.green,
		},
		diffRemoved = {
			fg = palette.red,
		},
		Folded = {
			fg = palette.grey,
			bg = palette.base3,
		},
		FoldColumn = {
			fg = palette.white,
			bg = palette.black,
		},
	}
end

M.load_plugin_syntax = function(palette)
	return {
		TSString = {
			fg = palette.darkGreen,
			style = 'italic'
		},
		TSInclude = {
			fg = palette.aqua,
			style = 'italic'
		},
		TSVariable = {
			fg = palette.orange,
		},
		TSVariableBuiltin = {
			fg = palette.orange,
		},
		TSAnnotation = {
			fg = palette.darkGreen,
			style = 'italic'
		},
		TSComment = {
			fg = palette.base6,
			style = 'italic',
		},
		TSConstant = {
			fg = palette.purple,
			style = 'bold'
		},
		TSConstBuiltin = {
			fg = palette.purple,
		},
		TSConstMacro = {
			fg = palette.purple,
		},
		TSConstructor = {
			fg = palette.yellow,
			style = 'bold'
		},
		TSConditional = {
			fg = palette.aqua,
			style = 'italic'
		},
		TSCharacter = {
			fg = palette.darkGreen,
			style = 'italic'
		},
		TSFunction = {
			fg = palette.green,
			style = 'bold',
		},
		TSFuncBuiltin = {
			fg = palette.green,
		},
		TSFuncMacro = {
			fg = palette.green,
			style = 'italic',
		},
		TSKeyword = {
			fg = palette.aqua,
			style = 'italic',
		},
		TSKeywordFunction = {
			fg = palette.yellow,
			style = 'italic',
		},
		TSKeywordOperator = {
			fg = palette.aqua,
			style = 'italic'
		},
		TSKeywordReturn = {
			fg = palette.aqua,
			style = 'italic'
		},
		TSMethod = {
			fg = palette.green,
			style = 'bold'
		},
		TSNamespace = {
			fg = palette.aqua,
			style = 'italic'
		},
		TSNumber = {
			fg = palette.purple,
		},
		TSOperator = {
			fg = palette.yellow,
			style = 'bold'
		},
		TSParameter = {
			fg = palette.purple,
		},
		TSParameterReference = {
			fg = palette.purple,
		},
		TSProperty = {
			fg = palette.orange,
		},
		TSPunctDelimiter = {
			fg = palette.yellow,
			style = 'bold'
		},
		TSPunctBracket = {
			fg = palette.brown,
		},
		TSPunctSpecial = {
			fg = palette.yellow,
		},
		TSRepeat = {
			fg = palette.aqua,
			style = 'italic'
		},
		TSStringRegex = {
			g = palette.purple,
		},
		TSStringEscape = {
			fg = palette.purple,
		},
		TSTag = {
			fg = palette.yellow,
			style = 'bold'
		},
		TSTagDelimiter = {
			fg = palette.brown,
		},
		TSTagAttribute = {
			fg = palette.orange,
		},
		TSLabel = {
			fg = palette.pink,
		},
		TSType = {
			fg = palette.yellow,
			style = 'bold'
		},
		TSException = {
			fg = palette.aqua,
			style = 'italic'
		},
		TSField = {
			fg = palette.white,
			style = 'italic'
		},
		TSFloat = {
			fg = palette.purple,
		},
		dbui_tables = {
			fg = palette.white,
		},

		-- Diagnostics --
		DiagnosticSignError = {
			fg = palette.red,
		},
		DiagnosticSignWarn = {
			fg = palette.yellow,
		},
		DiagnosticSignInfo = {
			fg = palette.white,
		},
		DiagnosticSignHint = {
			fg = palette.aqua,
		},
		DiagnosticVirtualTextError = {
			fg = palette.red,
		},
		DiagnosticVirtualTextWarn = {
			fg = palette.yellow,
		},
		DiagnosticVirtualTextInfo = {
			fg = palette.white,
		},
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
	}
end

local function highlight(group, color)
		local style = color.style and 'gui=' .. color.style or 'gui=NONE'
		local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
		local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
		local sp = color.sp and 'guisp = ' .. color.sp or ''
		vim.cmd(
			'highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp
		)
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
	local used_palette = config.palette or M.classic
	vim.g.colors_name = used_palette.name

	local syntax = M.load_syntax(used_palette)
	syntax = vim.tbl_deep_extend('keep', config.custom_hlgroups, syntax)
	for group, colors in pairs(syntax) do
		highlight(group, colors)
	end
	local plugin_syntax = M.load_plugin_syntax(used_palette)
	plugin_syntax = vim.tbl_deep_extend(
		'keep',
		config.custom_hlgroups,
		plugin_syntax
	)
	for group, colors in pairs(plugin_syntax) do
		highlight(group, colors)
	end
end

M.setup()
