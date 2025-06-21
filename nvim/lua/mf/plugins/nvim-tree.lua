-- nvim-tree
--
-- File tree explorer.
return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		local nvimtree = require("nvim-tree")

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					show = {
						file = false,
						folder = false,
						git = false,
						modified = false,
						hidden = false,
						diagnostics = false,
						bookmarks = false,
					},
					glyphs = {
						folder = {
							arrow_closed = "->",
							arrow_open = "|",
						},
					},
				},
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", function()
			require("telescope.builtin").find_files({ hidden = true })
		end, { desc = "Fuzzy find files in cwd (including hidden)" })

		keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer" })
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
	end,
}
