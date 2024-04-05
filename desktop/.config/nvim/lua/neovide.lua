vim.opt.linespace = 1
vim.g.neovide_scale_factor = 1.15
for _, side in ipairs({ "top", "bottom", "right", "left" }) do
	vim.g["neovide_padding_" .. side] = 5
end
