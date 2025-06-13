return {
	{
		"williamboman/mason.nvim",
		opts = {},
		keys = {
			{ "<leader>m", "<cmd>Mason<cr>", desc = "Open Mason" },
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("clangd")
			vim.lsp.enable("rust_analyzer", {
				settings = {
					["rust_analyzer"] = {
						cargo = {
							loadOutDirsFromCheck = true,
						},
						checkOnSave = {
							command = "clippy",
						},
						completion = {
							autoimport = {
								enable = true,
							},
						},
					},
				},
			})
			vim.lsp.enable("jdtls")
			vim.lsp.enable("jsonls")
			vim.lsp.enable("pylsp")
			vim.lsp.enable("shellcheck")
			vim.lsp.enable("lemminx")
		end,
		opts = {},
		keys = {
			{
				"<leader>ca",
				function()
					vim.lsp.buf.code_action()
				end,
				desc = "Code actions",
			},
		},
	},
	{
		"mfussenegger/nvim-jdtls",
	},
}
