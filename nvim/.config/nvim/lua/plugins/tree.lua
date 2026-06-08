return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			-- disable netrw at the very start of your init.lua
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			-- optionally enable 24-bit colour
			vim.opt.termguicolors = true

			-- setup with some options
			require("nvim-tree").setup({
				sort = {
					sorter = "case_sensitive",
				},
				view = {
					width = 30,
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
				},
			})

			-- keymap for toggle
			vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })

			local function my_on_attach(bufnr)
				local api = require("nvim-tree.api")

				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				-- default mappings
				api.config.mappings.default_on_attach(bufnr)
			end

			-- pass to setup along with your other options
			require("nvim-tree").setup({
				---
				on_attach = my_on_attach,
				---
			})
		end,
	},
}
