-- Nicer filetree than NetRW
return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			local keys = require("helpers.keys")
			require("neo-tree").setup()
			keys.map(
				{ "n", "v" },
				"<leader>e",
				"<cmd>NeoTreeRevealToggle<cr>",
				"Toggle file explorer"
			)
			keys.map(
				"n",
				"Super_L",
				function ()
					print("ABAB")
				end
			)
		end,
	},
}
