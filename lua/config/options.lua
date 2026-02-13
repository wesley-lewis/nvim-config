-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.g.neovide then
  vim.o.guifont = "CaskaydiaCove Nerd Font:h12"
  vim.opt.linespace = 4
  vim.opt.guicursor = "i:block"
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_hide_mouse_when_typing = false
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_fullscreen = true
  vim.g.neovide_cursor_animation_length = 0.150
  vim.g.neovide_cursor_trail_size = 0.5
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_cursor_unfocused_outline_width = 0.3
  vim.g.neovide_cursor_animate_in_insert_mode = false
end

vim.o.cursorline = false
vim.opt.guicursor = "i:blinkon300-blinkoff300,i:ver1"
-- vim.opt.guicursor = "i:blinkon300-blinkoff300,i:block"
