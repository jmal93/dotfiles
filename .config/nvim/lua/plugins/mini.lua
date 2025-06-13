return {
	{
		"echasnovski/mini.nvim",
		verson = false,
		config = function()
			require("mini.comment").setup()
			require("mini.surround").setup()
			require("mini.pairs").setup()
			require("mini.splitjoin").setup()
		end,
	},
}
