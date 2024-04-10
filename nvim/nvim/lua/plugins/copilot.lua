return {
	-- {
	--   "zbirenbaum/copilot.lua",
	--   opts = {
	--     filetypes = { ["*"] = true },
	--   },
	--   suggestion = {
	--     keymap = {
	--       accept = "<C-y>",
	--     },
	--   },
	-- },
	{
		"github/copilot.vim",
		init = function()
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_filetypes = { ["*"] = false }
		end,
		config = function()
			vim.keymap.set("i", "<M-]>", "copilot#Suggest()", {
				expr = true,
				replace_keycodes = false,
			})
			vim.keymap.set("i", "<C-y>", 'copilot#Accept("")', {
				silent = true,
				expr = true,
				script = true,
				replace_keycodes = false,
			})
		end,
	},
}
