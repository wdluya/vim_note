-- cursor color: #61AFEF
-- local colorscheme = "catppuccin"
-- local colorscheme = "darkplus"
local colorscheme = "github_light"
-- require "user.conf.github-nvim-theme"
-- vim.g.catppuccin_flavour = "mocha"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

if colorscheme == "onedark" then
  require "themes.onedark"
elseif colorscheme == "catppuccin" then
  require "themes.catppuccin"
elseif colorscheme == "github_light" then
  require "themes.github-nvim-theme"
end
