-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"


if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  -- vim.o.guifont = "Source Code Pro:h14" -- text below applies for VimScript
  -- vim.g.neovide_text_gamma = 0.0
  -- vim.g.neovide_text_contrast = 0.5

  -- -- Helper function for transparency formatting
  -- local alpha = function()
  --   return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
  -- end
  -- -- g:neovide_opacity should be 0 if you want to unify transparency of content and title bar.
  -- vim.g.neovide_opacity = 0.0
  -- vim.g.transparency = 0.8
  -- vim.g.neovide_background_color = "#0f1117" .. alpha()
  -- vim.g.neovide_normal_opacity = 0.8
  vim.g.neovide_position_animation_length = 0.15
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_underline_stroke_scale = 1.0
  vim.g.neovide_theme = 'auto'
  vim.g.neovide_input_ime = true
  vim.g.neovide_cursor_animation_length = 0.150
  vim.g.neovide_cursor_short_animation_length = 0.04
  vim.g.neovide_cursor_trail_size = 1.0
  vim.g.neovide_cursor_animate_in_insert_mode = true
  -- vim.g.neovide_cursor_vfx_mode = "sonicboom"
  -- vim.g.neovide_cursor_vfx_opacity = 200.0
  -- vim.g.neovide_cursor_vfx_particle_lifetime = 0.5
  -- vim.g.neovide_cursor_vfx_particle_highlight_lifetime = 0.2
  -- vim.g.neovide_cursor_vfx_particle_density = 0.7
  -- vim.g.neovide_cursor_vfx_particle_speed = 10.0

  vim.api.nvim_set_keymap("n", "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end
