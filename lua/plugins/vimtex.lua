return {"lervag/vimtex",
 lazy=false,
-- tag = "v2.15", 
init = function()
  vim.g.vimtex_view_method="zathura"
  vim.g.tex_flavor='latex'
  vim.g.vimtex_quickfix_mode=0
  -- figure out how to set conceallevel=1
  vim.o.conceallevel=1
  vim.g.tex_conceal='abdmg'
  vim.g.maplocalleader=","
end
}
