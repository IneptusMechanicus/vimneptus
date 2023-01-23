local status_ok, alpha = pcall(require, "alpha")
if not status_ok then return end

local function renderButton(shortcut, text, command)
	return { type = "button",
			val = text,
			on_press = function() vim.cmd(command) end,
			opts = {
				position = "center",
				hl = "@keyword",
				shortcut = shortcut,
				align_shortcut = "right",
				hl_shortcut = "@constructor",
				cursor = 1,
				width = 24,
    		}
		}
end

alpha.setup({
	layout = {
		{ type = "padding", val = 8 },
		-- TITLE --
		{ type = "text",
			val = {
				[[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
				[[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
				[[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
				[[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
				[[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
				[[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
			},
			opts = {
				position = "center",
				hl = "@function",
			},
		},
		{ type = "padding", val = 4 },
		-- OPTIONS --
		renderButton(":ene", "New Buffer", 'ene'),
		{ type = "padding", val = 1 },
		renderButton("SPC e", "File Explorer", 'Telescope file_browser'),
		{ type = "padding", val = 1 },
		renderButton("SPC", "Quick ref", ' '),
		{ type = "padding", val = 1 },
		renderButton("<C-q>", "Exit", 'qa!'),
		-- Footer --
		{ type = "padding", val = 4 },
		{ type = "text",
			val = "Code and Commit until it is Done",
			opts = {
				position = "center",
				hl = "WhiteSpace",
			},
		}
	},
	opts = {
		margin = 5,
	}
})
