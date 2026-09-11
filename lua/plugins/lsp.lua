return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable({
			"pyright", -- python
			"stylua", -- lua
			"marksman", -- markdown
			"postgres-language-server", -- sql y postgres
			"yaml-language-server", -- yaml
		})
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(ev)
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
			end,
		})
	end,
}
