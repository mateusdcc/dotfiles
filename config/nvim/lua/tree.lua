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
          hint = "",
          info = "",
          warning = "",
          error = "",
      }
  },
  update_focused_file = {
      enable      = false,
      update_cwd  = false,
      ignore_list = {}
  },
  system_open = {
  cmd  = nil,
  args = {}
  },
  view = {
      width = 25,
      height = 30,
      side = 'left',
      mappings = {
          custom_only = false,
          list = {}
      }
  }
}
