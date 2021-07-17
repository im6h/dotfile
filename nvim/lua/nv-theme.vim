lua << EOF
require("onedark").setup({
  functionStyle = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
  hideInactiveStatusline = true,
  darkSidebar = false,
  darkFloat = false,
  colors = {hint = "orange", error = "#ff0000"}
})

EOF
