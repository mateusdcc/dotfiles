require'nvim-treesitter.configs'.setup {
  ensure_installed = {"rust", "lua", "bash", "python", "toml", "html", "css", "javascript"},
  sync_install = false,
  -- ignore_install = { "parser" },

  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additional_vim_regex_highlighting = false,
  },

  rainbow = {
    enable = false,
    extended_mode = true,
    max_file_lines = nil,
  }
}

require'treesitter-context'.setup{}
