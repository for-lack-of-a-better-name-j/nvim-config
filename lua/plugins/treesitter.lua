
-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
    },
    ignore_install = { 'org', 'latex' },
    highlight={enable=true,disable={'latex'}}
  },
}
