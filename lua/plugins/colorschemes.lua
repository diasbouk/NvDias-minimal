return {
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
	{ "frenzyexists/aquarium-vim" },
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{ "AlessandroYorba/Alduin" },
	{"rebelot/kanagawa.nvim"},
	{
		'echasnovski/mini.nvim',
		version = '*' ,
		config = function()
			require('mini.statusline').setup()
		end,
	},
}
