vim.g.blamer_prefix = " > "
vim.g.blamer_template = "<committer> | <committer-time> | <summary>"
vim.g.blamer_enabled = 0

vim.api.nvim_create_user_command("BT", function()
	vim.cmd("BlamerToggle")
end, {})
