local status_ok, alpha = pcall(require, "alpha")
if not status_ok then return end
local if_nil = vim.F.if_nil

local default_terminal = {
	type = "terminal",
	command = nil,
	width = 69,
	height = 8,
	opts = {
		redraw = true,
		window_config = {},
	},
}

local default_header = {
	type = "text",
	val = {
		[[ _        _______  _______          _________ _______ ]],
		[[( (    /|(  ____ \(  ___  )|\     /|\__   __/(       )]],
		[[|  \  ( || (    \/| (   ) || )   ( |   ) (   | () () |]],
		[[|   \ | || (__    | |   | || |   | |   | |   | || || |]],
		[[| (\ \) ||  __)   | |   | |( (   ) )   | |   | |(_)| |]],
		[[| | \   || (      | |   | | \ \_/ /    | |   | |   | |]],
		[[| )  \  || (____/\| (___) |  \   /  ___) (___| )   ( |]],
		[[|/    )_)(_______/(_______)   \_/   \_______/|/     \|]]
	},
	opts = {
		position = "center",
		hl = "Type",
		-- wrap = "overflow";
	},
}

local footer = {
	type = "text",
	val = "",
	opts = {
		position = "center",
		hl = "Number",
	},
}

local leader = "SPC"

local function button(sc, txt, keybind, keybind_opts)
	local sc_ = sc:gsub("%s", ""):gsub(leader, "<leader>")
	local opts = {
		position = "center",
		shortcut = sc,
		cursor = 5,
		width = 50,
		align_shortcut = "right",
		hl_shortcut = "Keyword",
	}
	if keybind then
		keybind_opts = if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
		opts.keymap = { "n", sc_, keybind, keybind_opts }
	end

	local function on_press()
		local key = vim.api.nvim_replace_termcodes(keybind or sc_ .. "<Ignore>", true, false, true)
		vim.api.nvim_feedkeys(key, "t", false)
	end

	return {
		type = "button",
		val = txt,
		on_press = on_press,
		opts = opts,
	}
end

local buttons = {
	type = "group",
	val = {
		button("e", "  New file", "<cmd>ene <CR>"),
		button("/", "  Find word"),
		button("SPC e", " Toggle File Explorer"),
		button("SPC o", " Focus on File Explorer"),
		button("Shift l", "怜 Next file tab"),
		button("Shift h", "玲 Prev file tab"),
		button("Ctr q", "⏻ Exit Neovim"),
	},
	opts = {
		spacing = 1,
	},
}

local section = {
	terminal = default_terminal,
	header = default_header,
	buttons = buttons,
	footer = footer,
}

alpha.setup({
	layout = {
		{ type = "padding", val = 2 },
		section.header,
		{ type = "padding", val = 2 },
		section.buttons,
		section.footer,
	},
	opts = {
		margin = 5,
	}
})
