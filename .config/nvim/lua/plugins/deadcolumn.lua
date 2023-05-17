local colors = require("tokyonight.colors").setup()
return {
  {
    "Bekaboo/deadcolumn.nvim",
    opts = {
      scope = "line",
      blending = {
        colorcode = colors.bg_dark,
      },
    },
  },
}
