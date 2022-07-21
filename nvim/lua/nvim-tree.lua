require('nvim-tree').setup {
  update_cwd = true,
  respect_buf_cwd = true,
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = false,
  hijack_cursor       = false,
  diagnostics         = {
      enable = true,
      icons = {
          hint = "H",
          info = "I",
          warning = "W",
          error = "E",
      }
  },
  update_focused_file = {
      enable      = true,
      update_cwd  = true,
      ignore_list = {}
  },
  system_open = {
  cmd  = nil,
  args = {}
  },
  view = {
      adaptive_size = false,
      width = 35,
      height = 30,
      side = 'left',
      mappings = {
          custom_only = false,
          list = {}
      }
  }
}
