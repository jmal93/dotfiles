return {
	"luisiacc/gruvbox-baby",
	priority = 1000,
	lazy = false,
	config = function()
		vim.g.gruvbox_baby_telescope_theme = 1

		vim.cmd([[colorscheme gruvbox-baby]])
	end,
}
