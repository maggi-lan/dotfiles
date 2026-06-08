return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "master",
		dependencies = {
			"nvim-lua/plenary.nvim",

			-- optional but recommended
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},

		-- this lazy-loads telescope on these keypresses
		keys = {
			{
				"<leader>pf",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = "telescope find files",
			},
			{
				"<leader>pg",
				function()
					require("telescope.builtin").git_files()
				end,
				desc = "git fuzzy find",
			},
			{
				"<leader>ps",
				function()
					require("telescope.builtin").grep_string({
						search = vim.fn.input("grep > "),
					})
				end,
				desc = "telescope grep string",
			},
		},

		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous,
							["<C-j>"] = actions.move_selection_next,
						},
						n = {
							["<C-k>"] = actions.move_selection_previous,
							["<C-j>"] = actions.move_selection_next,
						},
					},
				},
			})
		end,
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",

		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),

						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--   -- do the following
						--   codeactions = false,
						-- }
					},
				},
			})

			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
}
