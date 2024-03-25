local function git_branch()
	local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
	if string.len(branch) > 0 then
		return branch
	else
		return ":"
	end
end

local function statusline()
	local branch = git_branch()

	-- old colors
	local set_color_1 = "%#PmenuSel#"
	local set_color_2 = "%#LineNr#"

	-- my new colors
	vim.api.nvim_set_hl(0, "MyRedBranche", { ctermfg = "red", ctermbg = "black", fg = "red", bg = "black" })
	vim.api.nvim_set_hl(0, "MyGreenBranche", { ctermfg = "green", ctermbg = "black", fg = "lightgreen", bg = "black" })

	if branch == "main" then
		set_color_1 = "%#MyRedBranche#"
	else
		set_color_1 = "%#MyGreenBranche#"
	end

	local file_name = " %F"
	local modified = " %m"
	local align_right = "%="
	local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
	local fileformat = " [%{&fileformat}]"
	local filetype = " %y"
	local percentage = " %p%%"
	local linecol = " %l:%c"

	return string.format(
		"%s %s %s%s%s%s%s%s%s%s%s",
		set_color_1,
		branch,
		set_color_2,
		file_name,
		modified,
		align_right,
		filetype,
		fileencoding,
		fileformat,
		percentage,
		linecol
	)
end

vim.opt.statusline = statusline()
