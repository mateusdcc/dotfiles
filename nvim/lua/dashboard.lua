local startup = require("startup")

vim.g.startup_bookmarks = {
  ["P"] = "~/Projects/Ramsoware/src/main.cpp",
  ["C"] = "~/.config/nvim/init.lua",
  ["N"] = "~/.config/nixpkgs/manager.nix"
}

startup.setup({
    theme = "startify"
})
