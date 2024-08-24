return {
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
	{ "frenzyexists/aquarium-vim" },
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{ "AlessandroYorba/Alduin" },
	{"rebelot/kanagawa.nvim"},

	{
		"goolord/alpha-nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.startify")

			dashboard.section.header.val = {
	"					                          ",
    "					  ██╗   ██╗██╗███╗   ███╗ ",
    "					 ╗██║   ██║██║████╗ ████║ ",
    "					 ║██║   ██║██║██╔████╔██║ ",
    "					 ║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "					 ╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "					    ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "					                                                     ",
			}

			alpha.setup(dashboard.opts)
		end,
	},
}
