return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live grep" },
	},
	opts = {
		extensions = {
			["ui-select"] = { require("telescope.themes").get_dropdown({}) },
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("ui-select")
	end,
}
