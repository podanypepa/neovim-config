local TelescopeColor = {
	TelescopePromptBorder = { bg = "none", fg = "orange" },
	TelescopePromptNormal = { bg = "none", fg = "yellow" },
}

for hl, col in pairs(TelescopeColor) do
	vim.api.nvim_set_hl(0, hl, col)
end
