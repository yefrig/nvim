return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.indentscope").setup()
    require("mini.files").setup()
  end,
}
