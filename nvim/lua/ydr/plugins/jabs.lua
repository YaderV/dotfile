require("jabs").setup({
	position = { "center", "center" }, -- position = {'<position_x>', '<position_y>'} | <position_x> left, center, right,
	sort_mru = true,
	width = 100, -- default 50
	height = 30, -- default 10
	border = "single", -- none, single, double, rounded, solid, shadow, (or an array or chars). Default shadow
	symbols = {
		current = "", -- default 
		split = "◫", -- default 
		alternate = "⊙", -- default 
		hidden = "", -- default ﬘
		locked = "", -- default 
		ro = "R", -- default 
		edited = "E", -- default 
		terminal = "T", -- default 
		default_file = "D", -- Filetype icon if not present in nvim-web-devicons. Default 
		terminal_symbol = "", -- Filetype icon for a terminal split. Default 
	},
})
