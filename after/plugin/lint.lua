local lint = require("lint")

lint.linters_by_ft = {
	cmake = { "cmakelint" },
	cpp = { "cpplint" },
	python = { "ruff" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
