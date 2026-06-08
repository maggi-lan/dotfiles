return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },

	config = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "markdown",
			callback = function(ev)
				vim.keymap.set("n", "<C-p>", "<cmd>MarkdownPreviewToggle<CR>", {
					buffer = ev.buf,
					desc = "Toggle Markdown Preview",
				})
			end,
		})
	end,
}
