return { -- You can easily change to a different colorscheme.
  "sainnhe/gruvbox-material",
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme("gruvbox-material")
	-- You can configure highlights by doing something like:
    vim.cmd.hi("Comment gui=none")
  end,
}
