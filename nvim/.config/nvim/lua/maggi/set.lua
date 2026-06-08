-- Turn on relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Turn off that mode display thing at the bottom since we have lualine
vim.opt.showmode = false

-- Set indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Turn on smart indentation
vim.opt.smartindent = true

-- Turn off line wrapping
vim.opt.wrap = false

-- Don't allow yank/delete to access the clipboard
vim.opt.clipboard = ""

-- Disable swapfile backup system and allow undotree to access old history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search functionality configuration
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set terminal colors
vim.opt.termguicolors = true

-- Disable comment continuation
vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		vim.opt_local.formatoptions:remove({ "c", "r", "o" })
	end,
})

-- Other configurations
vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = ""
