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
-- snippets
require("luasnip.loaders.from_lua").load({paths="~/.config/nvim/LuaSnip/"})

vim.cmd[[colorscheme tokyonight-storm]]
--vim.cmd[[colorscheme noctis_sereno]]
--vim.cmd[[colorscheme noctis_azureus]]
--vim.cmd[[colorscheme inferno]]
--vim.cmd[[colorscheme noctis_minimus]]
--vim.cmd[[colorscheme noctis]]
if vim.g.neovide then
  -- Put anything only for neovide here
  vim.o.guifont = "IosevkaTermSlab Nerd Font:h18"
  --vim.o.guifont = ""

  vim.g.neovide_transparency = 0.9
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_confirm_quit = true
  --vim.g.neovide_fullscreen = true
  vim.g.neovide_cursor_vfx_mode = "ripple"
end
vim.g.vimtex_view_method="zathura"
vim.g.tex_flavor='latex'
vim.g.vimtex_quickfix_mode=0
-- figure out how to set conceallevel=1
vim.o.conceallevel=1
vim.g.tex_conceal='abdmg'





