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
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.rust_analyzer.setup({
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
      lspconfig.jdtls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.qmlls.setup({
				cmd = { "/usr/lib/qt6/bin/qmlls", "-E" },
				filetypes = { "qml" },
			})
      lspconfig.lemminx.setup({})
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
