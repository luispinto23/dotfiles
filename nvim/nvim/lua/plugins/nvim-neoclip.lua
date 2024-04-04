return {
  "AckslD/nvim-neoclip.lua",
  config = function()
    require("neoclip").setup()
    vim.keymap.set("n", "<C-x>", ":Telescope neoclip<CR>", {})
  end,
}
