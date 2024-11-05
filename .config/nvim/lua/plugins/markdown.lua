return{
	"iamcco/markdown-preview.nvim",
	event = "BufRead",
	build = "cd app && npm install",
	config = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
	cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
}
