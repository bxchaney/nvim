-- Global function for reseting color scheme
function ChangeColors(color)
	color = color or 'dracula'
	vim.cmd.colorscheme(color)
end

ChangeColors()
