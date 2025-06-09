vim.api.nvim_create_autocmd('FileType', {
	pattern = {
    'lua',
    'json',
    'yml',
    'yaml',
    'rb',
    'html',
    'css',
    'js',
    'ts',
  },

	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end
})
