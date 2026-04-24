return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = { "lua_ls", "stylua", "clangd", "hls", "pyright", "neocmake" },

		handlers = {
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
			["clangd"] = function()
				require("lspconfig").clangd.setup({
					cmd = {
						"clangd",
						"--fallback-style=" .. vim.fn.json_encode({
							BasedOnStyle = "LLVM",
							IndentWidth = 8,
							TabWidth = 8,
							UseTab = "Never",
						}),
					},
				})
			end,
		},
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
			desc = "LSP auto-format on save",
		})
	end,
	keys = {
		{ "K", vim.lsp.buf.hover, { desc = "Show LSP hover info" } },
		{ "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" } },
		{ "gd", vim.lsp.buf.definition, { desc = "Go to definition" } },
		{ "<leader>cf", vim.lsp.buf.format, { desc = "Format code" } },
		{ "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" } },
	},
}
