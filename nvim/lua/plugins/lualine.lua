return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = gruvbox_material,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
		})
	end,
	extensions = { "quickfix", "nvim-tree" },
}
