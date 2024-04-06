vim.opt.linespace = 1
for _, side in ipairs({ "top", "bottom", "right", "left" }) do
	vim.g["neovide_padding_" .. side] = 20
end
