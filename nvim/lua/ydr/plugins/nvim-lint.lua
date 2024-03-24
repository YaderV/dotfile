require("mason-nvim-lint").setup()

lint = require("lint")
lint.linters_by_ft = {
	go = { "revive" },
	javascript = { "eslint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		lint.try_lint()
	end,
})

vim.keymap.set("n", "<leader>l", function()
	lint.try_lint()
end)
