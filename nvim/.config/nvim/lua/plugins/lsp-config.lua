return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					border = "rounded",
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- Python
					"pyright",

					-- C / C++
					"clangd",

					-- JavaScript / TypeScript / JSX / TSX
					"ts_ls",
					"eslint",

					-- Rust
					"rust_analyzer",

					-- Go
					"gopls",

					-- HTML / CSS
					"html",
					"cssls",

					-- Bash
					"bashls",

					-- Lua
					"lua_ls",
					"stylua",

					-- Markdown
					"marksman",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Declare `vim` as a global variable so that the Lua language server doesn't complain about it
			vim.lsp.config.lua_ls = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			}

			-- Connect neovim with the language servers
			vim.lsp.enable("pyright")
			vim.lsp.enable("clangd")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("eslint")
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("gopls")
			vim.lsp.enable("html")
			vim.lsp.enable("cssls")
			vim.lsp.enable("bashls")
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("marksman")

			-- Some default keymaps
			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover({ border = "rounded" })
			end)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action)
		end,
	},
}
