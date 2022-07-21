local devicons = require("nvim-web-devicons")

devicons.setup {
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 default = false;
}

devicons.get_icons()
