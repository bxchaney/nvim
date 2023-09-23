local lint = require("lint")

lint.linters_by_ft = {
	cmake = { "cmakelint" },
	cpp = { "cpplint" },
	python = { "flake8" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
