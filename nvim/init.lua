require("config.lazy")
-- VIM Settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nu")
vim.cmd("set ai")

-- vim.cmd("inoremap ( ()<Esc>i")
-- vim.cmd("inoremap { {}<Esc>i")
-- vim.cmd("inoremap {<CR> {<CR>}<Esc>O")
-- vim.cmd("inoremap [ []<Esc>i")
-- vim.cmd("inoremap < <><Esc>i")
-- vim.cmd("inoremap \' \'\'<Esc>i")
-- vim.cmd("inoremap \" \"\"<Esc>i")

vim.cmd("inoremap { {}<Esc>ha")
vim.cmd("inoremap ( ()<Esc>ha")
vim.cmd("inoremap [ []<Esc>ha")
vim.cmd('inoremap " ""<Esc>ha')
vim.cmd("inoremap ' ''<Esc>ha")
vim.cmd("inoremap ` ``<Esc>ha")
vim.cmd("set listchars=tab:>·,trail:~,extends:>,precedes:<,space:·")
-- vim.cmd("set listchars=tab:→\\ ,trail:·,eol:¬,extends:…,precedes:…")
vim.cmd("set list")
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
	end,
})

vim.o.autowriteall = true
