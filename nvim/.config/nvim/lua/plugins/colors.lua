return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.o.background = "dark"
			vim.cmd("colorscheme gruvbox")

			-- Core transparency
			vim.api.nvim_set_hl(0, "Normal", { bg = nil })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = nil })

			-- Completion menu
			vim.api.nvim_set_hl(0, "Pmenu", { bg = nil })

			-- Sign Column
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
			vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#fb4934", bg = "none" })
			vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#fabd2f", bg = "none" })
			vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#83a598", bg = "none" })
			vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#b8bb26", bg = "none" })
		end,
	},
}
