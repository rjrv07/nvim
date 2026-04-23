return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls", "stylua", "clangd", "hls", "pyright", "neocmake" },
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	keys = {
		{ "K", vim.lsp.buf.hover, { desc = "Show LSP hover info" } },
		{ "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" } },
		{ "gd", vim.lsp.buf.definition, { desc = "Go to definition" } },
		{ "<leader>cf", vim.lsp.buf.format, { desc = "Format code" } },
		{ "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" } },
	},
}
