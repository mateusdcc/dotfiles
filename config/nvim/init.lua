vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath

local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then
  impatient.enable_profile()
end

function configfile(path, config)
  local config = config or os.getenv("HOME") .. "/.config/nvim/"
  dofile(config .. path)
end

for _, source in ipairs {
  "lua/packer.lua",
  "lua/opts.lua",
  "lua/treesitter.lua",
  "lua/lsp.lua",
  "lua/autocmd.lua",
  "lua/keybinds.lua",
  "lua/tree.lua",
  "lua/web-devicons.lua",
  -- "lua/bar.lua",
  -- "lua/neovide.lua",
  -- "lua/bufferline.lua",
  -- "lua/dashboard.lua"
} do
  local status_ok, fault = pcall(configfile, source)
  if not status_ok then
    vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
  end
end
