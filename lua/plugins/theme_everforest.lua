return {
  "sainnhe/everforest",
  lazy = false,
  priority = 1000,
  -- https://github.com/sainnhe/everforest/blob/master/doc/everforest.txt
  config = function()
    vim.g.everforest_enable_italic = true
    vim.g.everforest_background = "medium"
    vim.g.everforest_ui_contrast = "high"
  end,
}
